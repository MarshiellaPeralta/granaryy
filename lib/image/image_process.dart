import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:camera/camera.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(QRScannerApp(cameras: cameras));
}

// Word class and dataset
class Word {
  final String english;
  final String tagalog;
  final String pangasinense;
  final String ilocano;

  Word({
    required this.english,
    required this.tagalog,
    required this.pangasinense,
    required this.ilocano,
  });
}

final List<Word> words = [
  Word(english: 'patience', tagalog: 'pasensya', pangasinense: 'sorry', ilocano: 'pasensya'),
  Word(english: 'focus', tagalog: 'mag-pokus', pangasinense: 'pokus', ilocano: 'agperreng'),
  Word(english: 'i love you', tagalog: 'mahal kita', pangasinense: 'gihiggugma', ilocano: 'tada tika'),
];

class QRScannerApp extends StatelessWidget {
  final List<CameraDescription> cameras;

  QRScannerApp({required this.cameras});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: QRScannerScreen(cameras: cameras),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QRScannerScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  QRScannerScreen({required this.cameras});

  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  bool _isFlashOn = false;
  CameraController? _cameraController;
  bool _isCameraInitialized = false;
  bool _isPermissionGranted = false;
  bool _isScanning = false;
  double _scanLinePosition = 0;
  String _extractedText = '';

  String _fromLanguage = 'English';
  String _toLanguage = 'Tagalog';

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
  }

  Future<void> _checkCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      _initializeCamera();
    } else if (status.isDenied || status.isRestricted) {
      var result = await Permission.camera.request();
      if (result.isGranted) {
        _initializeCamera();
      } else {
        setState(() {
          _isPermissionGranted = false;
        });
      }
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
    }
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      print("No cameras available");
      return;
    }

    _cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
    );

    try {
      await _cameraController!.initialize();
      setState(() {
        _isCameraInitialized = true;
        _isPermissionGranted = true;
      });
    } catch (e) {
      print("Error during camera initialization: $e");
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  void _toggleFlashlight() {
    if (_cameraController == null || !_isCameraInitialized) return;

    setState(() {
      _isFlashOn = !_isFlashOn;
    });

    _cameraController!.setFlashMode(
      _isFlashOn ? FlashMode.torch : FlashMode.off,
    );
  }

  void _startScanningAnimation() {
    setState(() {
      _isScanning = true;
      _scanLinePosition = 0;
    });

    Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (_scanLinePosition < 250) {
        setState(() {
          _scanLinePosition += 2;
        });
      } else {
        timer.cancel();
        setState(() {
          _isScanning = false;
        });

        // Start extracting text from camera
        _extractTextFromCamera();
      }
    });
  }

  Future<void> _extractTextFromCamera() async {
    if (_cameraController == null || !_isCameraInitialized) return;

    try {
      // Capture a frame from the camera
      final image = await _cameraController!.takePicture();

      // Load the image using ML Kit
      final inputImage = InputImage.fromFilePath(image.path);

      // Initialize text recognizer from Google ML Kit
      final textRecognizer = GoogleMlKit.vision.textRecognizer();
      final recognizedText = await textRecognizer.processImage(inputImage);

      // Dimensions of the green box on the screen (centered)
      const greenBoxWidth = 250.0;
      const greenBoxHeight = 250.0;
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;

      final greenBoxLeft = (screenWidth - greenBoxWidth) / 2;
      final greenBoxTop = 100; // Moved to the top
      final greenBoxRight = greenBoxLeft + greenBoxWidth;
      final greenBoxBottom = greenBoxTop + greenBoxHeight;

      String extractedText = "";

      // Iterate through text blocks and filter by the green box
      for (TextBlock block in recognizedText.blocks) {
        final boundingBox = block.boundingBox;
        if (boundingBox != null) {
          final blockLeft = boundingBox.left;
          final blockTop = boundingBox.top;
          final blockRight = boundingBox.right;
          final blockBottom = boundingBox.bottom;

          // Check if the block is inside or overlaps with the green box
          if (blockRight >= greenBoxLeft &&
              blockLeft <= greenBoxRight &&
              blockBottom >= greenBoxTop &&
              blockTop <= greenBoxBottom) {
            extractedText += block.text + " ";
          }
        }
      }

      // Handle the extracted text
      if (extractedText.isNotEmpty) {
        setState(() {
          _extractedText = extractedText.trim();
        });

        // Translate the extracted text immediately after capturing it
        String translatedText = _translateText(_extractedText);
        _showTranslationModal(translatedText);
      } else {
        setState(() {
          _extractedText = '';
        });
      }
    } catch (e) {
      print("Error extracting text: $e");
    }
  }

  void _showTranslationModal(String extractedText) {
    TextEditingController textController = TextEditingController(text: extractedText);
    String translatedText = '';  // To hold the translated text

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Translation Result'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TextField to display the extracted text
                  TextField(
                    controller: textController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Extracted Text',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Display translated text if available
                  if (translatedText.isNotEmpty) ...[
                    Text("Translated Text:"),
                    Text(
                      translatedText,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ],
              ),
              actions: [
                // Translate button that translates the text
                ElevatedButton(
                  onPressed: () {
                    String inputText = textController.text;
                    String translated = _translateText(inputText);
                    setState(() {
                      translatedText = translated;  // Update translated text
                    });
                  },
                  child: Text('Translate'),
                ),
                // Close button to close the modal
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  String _translateText(String text) {
    List<String> wordsList = text.split(' ');  // Split the text into individual words
    List<String> translatedWords = [];

    // Loop through each word and translate it using the dataset
    for (String word in wordsList) {
      // Match the word with the dataset and get the translation for the target language
      Word? matchedWord = words.firstWhere(
            (w) => _getWordTranslation(w, _fromLanguage).toLowerCase() == word.toLowerCase(),
        orElse: () => Word(english: '', tagalog: '', pangasinense: '', ilocano: ''),
      );

      // Get the translation of the word in the target language
      String translatedWord = _getWordTranslation(matchedWord, _toLanguage);

      // If no translation is found, keep the original word
      translatedWords.add(translatedWord.isEmpty ? word : translatedWord);
    }

    return translatedWords.join(' ');
  }

  String _getWordTranslation(Word word, String language) {
    switch (language) {
      case 'Tagalog':
        return word.tagalog;
      case 'Pangasinense':
        return word.pangasinense;
      case 'Ilocano':
        return word.ilocano;
      default:
        return word.english;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Navigate back to the previous screen
          },
        ),
        title: Text('QR Code Scanner'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          if (_isPermissionGranted && _isCameraInitialized)
            CameraPreview(_cameraController!)
          else if (!_isPermissionGranted)
            Center(
              child: Text(
                'Camera permission is required to scan QR codes.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          else
            Center(
              child: CircularProgressIndicator(),
            ),
          Positioned(
            top: 100, // Adjusted for the green box position
            left: (MediaQuery.of(context).size.width - 250) / 2,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.3),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Stack(
                children: [
                  if (_isScanning)
                    Positioned(
                      top: _scanLinePosition,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 2,
                        color: Colors.redAccent,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: _fromLanguage,
                  items: ['English', 'Tagalog', 'Pangasinan', 'Ilocano']
                      .map((language) => DropdownMenuItem(
                    child: Text(language),
                    value: language,
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _fromLanguage = value!;
                    });
                  },
                ),
                SizedBox(width: 20),
                DropdownButton<String>(
                  value: _toLanguage,
                  items: ['English', 'Tagalog', 'Pangasinan', 'Ilocano']
                      .map((language) => DropdownMenuItem(
                    child: Text(language),
                    value: language,
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _toLanguage = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: Icon(
                _isFlashOn ? Icons.flash_off : Icons.flash_on,
                color: Colors.white,
              ),
              onPressed: _toggleFlashlight,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startScanningAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
