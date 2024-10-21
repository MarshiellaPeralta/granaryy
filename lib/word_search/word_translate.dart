import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:permission_handler/permission_handler.dart';
import '../include/sidebar.dart'; // Ensure this path is correct

void main() {
  runApp(TranslateApp());
}

class TranslateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Granary Translate',
      theme: ThemeData(
        primaryColor: Color(0xFF1F2A44),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: TranslateScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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

// Dummy data for translations
final List<Word> words = [
  Word(english: 'hello', tagalog: 'kamusta', pangasinense: 'kumusta', ilocano: 'kablaaw'),
  Word(english: 'good', tagalog: 'maganda', pangasinense: 'magayag', ilocano: 'nasantuan'),
  Word(english: 'morning', tagalog: 'umaga', pangasinense: 'abong', ilocano: 'bigat'),
  // Add more words as needed
];

class TranslateScreen extends StatefulWidget {
  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  // Language selections
  String selectedInputLang = 'English';
  String selectedOutputLang = 'Ilocano';

  // Text fields
  String inputText = '';
  String translatedText = '';
  String errorMessage = '';

  // Loading state
  bool isLoading = false;

  // Sidebar visibility
  bool isSidebarVisible = false;

  // Text-to-Speech
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    _requestPermissions();
    _initTTS();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _requestPermissions() async {
    await Permission.microphone.request();
  }

  Future<void> _initTTS() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
  }

  void translateText() {
    setState(() {
      isLoading = true;
      errorMessage = ''; // Clear previous error message
      translatedText = '';
    });

    // Split the input text into words, handling punctuation
    List<String> inputWords = _splitInputText(inputText);

    // Translate each word
    List<String> translatedWords = [];

    for (String word in inputWords) {
      String translatedWord = _translateWord(word);
      translatedWords.add(translatedWord);
    }

    setState(() {
      translatedText = translatedWords.join(' ');
      isLoading = false;
    });
  }

  List<String> _splitInputText(String text) {
    // Use RegExp to split by spaces and keep punctuation
    RegExp regExp = RegExp(r"(\w+|[^\s\w]+)");
    return regExp.allMatches(text).map((match) => match.group(0)!).toList();
  }

  String _translateWord(String word) {
    // Remove punctuation from the word for matching
    String cleanedWord = word.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();

    // Find the matching word in the dataset
    Word? matchingWord = words.firstWhere(
          (w) => _matchesInput(w, cleanedWord),
      orElse: () => Word(english: "", tagalog: "", pangasinense: "", ilocano: ""),
    );

    if (matchingWord.english.isNotEmpty) {
      String translated = _getTranslatedText(matchingWord);

      // Preserve the original word's punctuation
      String punctuation = word.replaceAll(RegExp(r'\w+'), '');

      return translated + punctuation;
    } else {
      return word; // Return the original word if not found
    }
  }

  bool _matchesInput(Word word, String cleanedWord) {
    switch (selectedInputLang) {
      case 'Tagalog':
        return cleanedWord == word.tagalog.trim().toLowerCase();
      case 'English':
        return cleanedWord == word.english.trim().toLowerCase();
      case 'Pangasinan':
        return cleanedWord == word.pangasinense.trim().toLowerCase();
      case 'Ilocano':
        return cleanedWord == word.ilocano.trim().toLowerCase();
      default:
        return false;
    }
  }

  String _getTranslatedText(Word word) {
    switch (selectedOutputLang) {
      case 'Pangasinan':
        return word.pangasinense;
      case 'English':
        return word.english;
      case 'Tagalog':
        return word.tagalog;
      case 'Ilocano':
        return word.ilocano;
      default:
        return '';
    }
  }

  void copyTranslatedTextToClipboard() {
    Clipboard.setData(ClipboardData(text: translatedText));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Copied to clipboard!')),
    );
  }

  Future<void> _speak() async {
    if (translatedText.isNotEmpty) {
      String languageCode;
      switch (selectedOutputLang) {
        case 'Tagalog':
          languageCode = "tl-PH";
          break;
        case 'Pangasinan':
          languageCode = "pam-PH"; // Use appropriate language code
          break;
        case 'English':
        default:
          languageCode = "en-US";
      }

      await flutterTts.setLanguage(languageCode);
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(translatedText);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Granary Translate'),
        backgroundColor: Color(0xFF1F2A44),
        leading: IconButton(
          icon: Icon(
            isSidebarVisible ? Icons.arrow_back : Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isSidebarVisible = !isSidebarVisible; // Toggle sidebar visibility
            });
          },
          tooltip: isSidebarVisible ? 'Close Sidebar' : 'Open Sidebar',
        ),
      ),
      body: Row(
        children: [
          Sidebar(
            isVisible: isSidebarVisible,
            toggleSidebar: () {
              setState(() {
                isSidebarVisible = !isSidebarVisible;
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Language Selection Card
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Input Language Dropdown
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              value: selectedInputLang,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedInputLang = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'From',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              items: <String>['Tagalog', 'English', 'Pangasinan', 'Ilocano']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(width: 16),
                          // Output Language Dropdown
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              value: selectedOutputLang,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOutputLang = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'To',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              items: <String>['Pangasinan', 'English', 'Tagalog', 'Ilocano']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Input Text Field
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter text to translate:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) {
                              setState(() {
                                inputText = text;
                              });
                            },
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Type something...',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Translation button
                  ElevatedButton(
                    onPressed: translateText,
                    child: Text('Translate'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor:  Color(0xFF1F2A44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Translation Output
                  if (isLoading)
                    Center(child: CircularProgressIndicator())
                  else if (errorMessage.isNotEmpty)
                    Text(
                      errorMessage,
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    )
                  else if (translatedText.isNotEmpty)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Translated Text:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          SelectableText(
                            translatedText,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.copy),
                                onPressed: copyTranslatedTextToClipboard,
                                tooltip: 'Copy',
                              ),
                              IconButton(
                                icon: Icon(Icons.volume_up),
                                onPressed: _speak,
                                tooltip: 'Speak',
                              ),
                            ],
                          ),
                        ],
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
