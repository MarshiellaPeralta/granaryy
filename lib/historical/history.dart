import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  final List<String> eventTitles = [
    'Pangasinan’s Early History',
    'Dayat (Sea Festival)',
    'Lingayen Gulf Landings Anniversary and Pangasinan Veterans Day',
    'Ingayen Town Fiesta',
    'Bugallon Day “Carabao Festival"',
    'Pozorrubio Town Fiesta and Patupat Festival',
    'Villasis Town Fiesta and Talong Festival',
    'Mangatarem Town Fiesta and Feast of St.'
  ];
  final List<String> eventDetails = [
    '''Pangasinan’s colorful history dates back to 1571 when it was officially conquered and colonized by D. Martin de Goiti. It was on April 5, 1572, when it was made an encomienda, an institution where groups of indigenous people were legally entrusted to a Spanish conqueror with the duty of paying him labor or tribute.
Fast-forward to 1580, Pangasinan became a political entity with an “alkalde mayor” leading the province’s affairs. However, the most crucial milestone in its history was April 5, 1580, recognized as Pangasinan’s official founding day.

Significant Dates
Long before the arrival of the Spaniards, the Ancient Malayo-Polynesians of the Austronesian stock sailed by boat and established settlements along the Lingayen Gulf. These settlers were skilled in salt-making and named their new home Pangasinan, which means “the place where salt is made.” This name specifically referred to the coastal region, while the inland areas were collectively known as “Caboloan,” due to the abundance of a small bamboo species called “bolo” in that area. The people of Pangasinan engaged in trade with India, China, and Japan as early as the 8th century A.D.

In 1572, Juan de Salcedo received orders from his grandfather Governor General Miguel Lopez de Legazpi to explore and bring stability to northern Luzon. He led an expedition that took him to Pangasinan, which was later credited by Spanish priest-historian Fray Juan Ferrando as being discovered by Salcedo. On April 5, the province came under Spanish jurisdiction as an encomienda.

In the years 1574 to 1575, the Chinese corsair Limahong, having faced defeat by the Spaniards in his attempt to establish a colony in Manila, sought refuge in Pangasinan where he established his own small kingdom. Accompanying Limahong were men, women, and children who formed his party. Through coercion, he compelled the local inhabitants to provide provisions and serve his group.

In response to the situation, Juan de Salcedo took charge and led the pursuit of Limahong. Despite months of blockading, Limahong and his forces managed to escape through a channel they had dug out into the China Sea, thus evading Salcedo’s pursuit in August 1575. Notably, many of Limahong’s followers, along with their families, decided to stay in Lingayen even after he left. In 1580, Pangasinan was established as an alcaldia mayor or province by Governor General Gonzalo Ronquillo de Peñalosa, and Don Pedro Manrique became its first alcalde mayor.

The superior government officially defined the territorial boundaries of Pangasinan in 1611. This was a crucial step towards establishing a functional political subdivision, which required a well-defined geographical area, a designated administration, and a populace adhering to the law.

The newly formed province included all the coastal villages called “Pangasinan” and the inland regions known as “Caboloan.” The boundaries of the province extended from San Juan, now located in La Union, in the north to the foothills of the Cordillera and Caraballo mountains in the northeast and east. The southern boundary reached Paniqui, and the western extent included the present area of Sual town and even part of what we now know as Zambales.

In 1660, the Malong Revolt took place, led by Andres Malong from Binalatongan (modern-day San Carlos City). This rebellion involved the Filipinos rising against Spanish rule. The revolt was partly motivated by the temporary occupation of Manila by the Dutch, which encouraged local resistance.

During this revolt, Andres Malong proclaimed himself as the leader or “Ari,” and the Filipinos asserted their independence. Unfortunately, this declaration was brief as the Spanish military swiftly put down the uprising in under a month. Despite the initial boost provided by the Dutch, the Spanish government managed to quash the revolt and maintain its authority in the area.

The Palaris Revolt, led by Juan dela Cruz Palaris of Binalatongan, erupted in 1762 due to the locals’ resentment towards paying tributes to the Spanish authorities. The rebellion gained momentum after the Spanish army’s defeat and the British takeover of Manila. As a result of their escalated demands, the Spanish were driven out of the central town of Lingayen.

For two years, the rebels and their allies held power and autonomy in the Spanish government of the province. Nevertheless, when Juan dela Cruz Palaris was captured, the rebellion came to a close. To put the tumultuous events behind them, Spanish officials renamed the town of “Binalatongan” to “San Carlos” in honor of the ruling monarch at that time, Charles III. It’s believed that the renaming was a symbolic act to reassert Spanish control and honor the end of the revolt.

The year 1840 saw a major milestone with the construction of the Casa Real, also known as the Royal House, in Lingayen. This impressive structure, spanning over 1,700 square meters, was built using stone and bricks. It functioned as the Provincial Capitol, where the Alcalde Mayor, or Provincial Mayor, resided and carried out official business.
''',
    '''The celebration of Pista’y Dayat Festival, also known as the ‘Sea Festival,’ is an annual event held on the first day of May. It began in 1970, with "Pista" being a Spanish word for "Festival" and "Dayat" in Pangasinense meaning "sea." This festival celebrates the bountiful resources of the sea and the local community's gratitude for it. It features colorful events, parades, and community gatherings, drawing visitors from across the Philippines.''',
'''The U.S. 6th Army conducted an amphibious landing on the gulf, following a devastating naval bombardment, with 68,000 troops landing on the first day alone, and a total of 203,608 in following landings along a 20 mi (32 km) beachhead, stretching from Sual, Lingayen, and Dagupan (XIV Corps).''',
    '''Bagoong Festival, held every third week of January, exalts the town's “one town-one product” (OTOP), known as the tastiest salted fish-paste. Pista'y Dayat (beach festival) every May 1, is a most-awaited summer event.''',
    '''The Bugallon Day “Carabao Festival” showcases the town of Bugallon's gratitude for its agricultural abundance, featuring a grand parade of decorated carabaos.''',
    '''The Pozorrubio Pangasinan celebrated its annual fiesta and this year, it is highlighted with their famous product which is the “Patupat” – a native delicacy made from sticky rice and wrapped in coconut leaves. It is cooked in boiling sugarcane-juice. It is served with melted panocha or pakasiat.

And because their town is known for making patupat, they named their yearly fiesta as “Patupat Festival“. Like other festivities in town, they also celebrated it with full of enjoyable activities, dancing, singing and lots of competition.''',
    '''Dubbed as “vegetable basket of the north,” and “vegetable home of Pangasinan,” Villasis launched its local festival named “Talong Festival” in 2012 thru a 9-day celebration with exciting activities as highlights of the event. It was during its launching that the Villasis Vegetable Trading Post or Bagsakan was opened to the public. The festival is held every January of each year.''',
    '''The municipality is home to the Manleluag Hot Spring Protected Landscape located in Barangay Malabobo near the southern boundary of the municipality. In terms of economic activities, Mangatarem is primarily driven by agriculture. The municipality has the biggest land area in the entire Pangasinan province.'''
    // Add more detailed descriptions for other events as necessary
  ];
  // List of image paths (replace with actual paths if available)
  final List<String> eventImages = [
    'assets/history1.png', // Replace with actual image paths
    'assets/history2.jpg',
    'assets/history3.jpg',
    'assets/history4.jpg',
    'assets/history5.jpg',
    'assets/history6.jpg',
    'assets/history7.jpg',
    'assets/history8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historical Events',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _buildAnimatedBackground(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: eventTitles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailsScreen(
                          title: eventTitles[index],
                          details: eventDetails[index],
                          imagePath: eventImages[index],
                          heroTag: 'eventImage_$index',
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 8,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Hero(
                          tag: 'eventImage_$index',
                          child: Image.asset(
                            eventImages[index],
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.cover,
                            color: Colors.black.withOpacity(0.4),
                            colorBlendMode: BlendMode.darken,
                          ),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            eventTitles[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedBackground() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0A1128), Color(0xFF1F2A44)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        _buildPulsingCircle(-100, -100, 300, Colors.blueAccent.withOpacity(0.2), 6),
        _buildPulsingCircle(150, 100, 200, Colors.purpleAccent.withOpacity(0.15), 8),
        _buildPulsingCircle(-100, 200, 150, Colors.tealAccent.withOpacity(0.1), 5),
      ],
    );
  }

  Widget _buildPulsingCircle(double left, double top, double size, Color color, int duration) {
    return Positioned(
      left: left,
      top: top,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: size * 0.8, end: size),
        duration: Duration(seconds: duration),
        curve: Curves.easeInOut,
        builder: (context, value, child) {
          return Container(
            width: value,
            height: value,
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
        },
      ),
    );
  }
}

class EventDetailsScreen extends StatelessWidget {
  final String title;
  final String details;
  final String imagePath;
  final String heroTag;

  EventDetailsScreen({
    required this.title,
    required this.details,
    required this.imagePath,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Hero(
            tag: heroTag,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1F2A44), Color(0xFF0A1128)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.white38),
                    SizedBox(height: 10),
                    Text(
                      details,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
