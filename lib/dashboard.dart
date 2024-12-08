import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'include/sidebar.dart';
import 'questionnaire/multiple_choice.dart';
import 'word_search/word_translate.dart';
import 'dictionary/dictionary.dart';
import 'image/image_process.dart';
import 'historical/history.dart';
import 'historical/Festival.dart';
import 'package:flutter_intro/flutter_intro.dart';

void main() => runApp(SmartHomeApp());

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Intro(
      padding: const EdgeInsets.all(8),
      borderRadius: BorderRadius.all(Radius.circular(4)),
      maskColor: const Color.fromRGBO(0, 0, 0, .6),
      noAnimation: false,
      maskClosable: false,
      buttonBuilder: (order) {
        return IntroButtonConfig(
          text: order == 3 ? 'End Tour' : 'Next',
          height: order == 3 ? 48 : null,
          fontSize: order == 3 ? 24 : null,
          style: order == 3
              ? OutlinedButton.styleFrom(
            backgroundColor: Colors.red,
          )
              : null,
        );
      },
      child: MaterialApp(
        home: SmartHomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Word {
  final String word;
  final String definition;
  final String sentence;
  final String translation;

  Word({
    required this.word,
    required this.definition,
    required this.sentence,
    required this.translation,
  });
}

class SmartHomeScreen extends StatefulWidget {
  @override
  _SmartHomeScreenState createState() => _SmartHomeScreenState();
}

class _SmartHomeScreenState extends State<SmartHomeScreen> {
  bool isSidebarVisible = false;

  final List<Word> words = [
    Word(
      word: "Aksaya",
      definition: "Waste",
      sentence: "Ang oras na aksaya ay hindi na maibabalik.",
      translation: "Wasted time cannot be recovered.",
    )
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Intro.of(context).start();
    });
  }

  Word getWordOfTheDay() {
    final DateTime now = DateTime.now();
    final int dayOfYear = int.parse(DateFormat("D").format(now));
    return words[dayOfYear % words.length];
  }

  @override
  Widget build(BuildContext context) {
    final Word wordOfTheDay = getWordOfTheDay();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0A1128), Color(0xFF1F2A44)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: -50,
            child: _buildBlurredCircle(180, Colors.blueAccent.withOpacity(0.3)),
          ),
          Positioned(
            bottom: -60,
            right: -80,
            child: _buildBlurredCircle(250, Colors.orangeAccent.withOpacity(0.15)),
          ),
          Positioned(
            top: 180,
            right: -60,
            child: _buildBlurredCircle(120, Colors.purpleAccent.withOpacity(0.15)),
          ),
          Positioned(
            top: 250,
            left: 50,
            child: _buildBlurredCircle(100, Colors.tealAccent.withOpacity(0.15)),
          ),
          SafeArea(
            child: Row(
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IntroStepBuilder(
                                order: 0,
                                text: 'Toggle the sidebar menu here.',
                                builder: (context, key) => IconButton(
                                  key: key,
                                  icon: Icon(
                                    isSidebarVisible ? Icons.arrow_back : Icons.menu,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isSidebarVisible = !isSidebarVisible;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'GranaryApp',
                                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'Word of the Day',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  DateFormat.yMMMMd().format(DateTime.now()),
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),

                          IntroStepBuilder(
                            order: 1,
                            text: 'View the word of the day here.',
                            builder: (context, key) => _buildWordCard(wordOfTheDay, key),
                          ),

                          SizedBox(height: 30),

                          Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          IntroStepBuilder(
                            order: 2,
                            text: 'Explore the various features through these categories.',
                            builder: (context, key) => GridView.count(
                              key: key,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                _buildCategoryButton(Icons.camera, 'Image Translator', Colors.lightBlue, QRScannerApp(cameras: [])),
                                _buildCategoryButton(Icons.text_fields, 'Text Translator', Colors.yellow, TranslateApp()),
                                _buildCategoryButton(Icons.book, 'Dictionary', Colors.green, DictionaryApp()),
                                _buildCategoryButton(Icons.quiz_outlined, 'Quiz', Colors.purple, HomeScreen()),
                                _buildCategoryButton(Icons.tour, 'Tourist Spots', Colors.red, TouristSpotsScreen()),
                                _buildCategoryButton(Icons.festival, 'History & Festival', Colors.orange, HistoryScreen()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: IntroStepBuilder(
        order: 3,
        text: 'Tap this icon to end the app tour.',
        builder: (context, key) => FloatingActionButton(
          key: key,
          onPressed: () {
            Intro.of(context).start();
          },
          child: Icon(Icons.help_outline),
        ),
      ),
    );
  }

  Widget _buildWordCard(Word word, Key key) {
    return Card(
      key: key,
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1F2A44), Color(0xFF0A1C3D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [Colors.blueAccent.withOpacity(0.2), Colors.transparent],
                    ),
                  ),
                ),
                Icon(
                  Icons.auto_stories,
                  color: Colors.lightBlueAccent,
                  size: 40,
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              word.word,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Divider(
              color: Colors.white24,
              thickness: 1.5,
              indent: 40,
              endIndent: 40,
            ),
            _buildSection(
              icon: Icons.info_outline,
              iconColor: Colors.orangeAccent,
              label: "Definition",
              content: word.definition,
            ),
            _buildSection(
              icon: Icons.lightbulb_outline,
              iconColor: Colors.yellowAccent,
              label: "Example",
              content: word.sentence,
            ),
            _buildSection(
              icon: Icons.translate,
              iconColor: Colors.greenAccent,
              label: "Translation",
              content: word.translation,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              "$label: $content",
              style: TextStyle(fontSize: 14, color: Colors.white70),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(IconData icon, String label, Color iconColor, Widget nextScreen) {
    return Card(
      elevation: 8,
      color: Color(0xFF1F2A44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextScreen),
          );
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [iconColor.withOpacity(0.5), iconColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 36, color: Colors.white),
                SizedBox(height: 8),
                Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBlurredCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 100,
            spreadRadius: 40,
          ),
        ],
      ),
    );
  }
}