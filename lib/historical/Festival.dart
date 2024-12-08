import 'package:flutter/material.dart';

class TouristSpotsScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/tourist_spot_1.jpg',
    'assets/tourist_spot_2.jpg',
    'assets/tourist_spot_3.jpg',
    'assets/12.jpg',
    'assets/tourist_spot_5.jpg',
    'assets/tourist_spot_7.jpg',
    'assets/tourist_spot_8.jpg',
    'assets/tourist_spot_10.jpg',
    'assets/11.jpg',
  ];

  final List<String> spotNames = [
    'Hundred Islands National Park',
    'Minor Basilica of Our Lady of the Rosary of Manaog',
    'Cambongaoan Beach and Death Pool',
    'Patar Beach',
    'Enchanted Cave',
    'Bolinao Falls',
    'Cape Bolinao Lighthouse',
    'Dasoland Family Adventure Park',
    'Tondol Beach',
  ];

  final List<String> spotDetails = [
    'This is the first Philippine national park and a protected area located in Alaminos, Pangasinan. The islands, totaling 124 at low tide and 123 at high tide, are scattered in Lingayen Gulf covering an area of 16.76 square kilometres (6.47 sq mi), and also have a lot of activities too, like cliff jumping, banana boat, snorkeling and swimming of course. An aerial view of the hundred islands is a highlight showing the expanse of these coral reef landscape. To really enjoy the highlights of these islands you need to engage the different views from above, kayaking around, and snorkeling or scuba-diving below. It is only through these collective experiences that you can truly appreciate the splendor of this national park.',
    'The Minor Basilica of Our Lady of the Rosary of Manaoag, commonly known as Manaoag Church, is a Roman Catholic minor basilica located in Manaoag, Pangasinan in the Philippines. It is under the jurisdiction of the Archdiocese of Lingayen-Dagupan. The shrine is dedicated to the Blessed Virgin Mary under the title of Our Lady of the Rosary. The original shrine was founded in 1600, it is administered by the Order of Preachers and is a popular tourist and pilgrimage site among devotees. According to folk tradition in the 1600s, an apparition of the Blessed Mother showed herself to a farmer through a heavenly glow of light, and relayed to him the message about where she wanted her church to stand. The man took the message to the townspeople, and soon after, they built a small church. \n\n- Another miraculous event happened involving a dead infant, who rose again after laying it down on the altar of the church. Over time, more and more testimonials and tales of Our Lady of Manaoag’s miraculous cures spread nationally and beyond foreign borders. This inspired the pilgrims and invited those who were extremely ill to pray and seek healing miracles from Our Lady. Soon after, Our Lady of the Most Holy Rosary became famous for being the patroness of the sick, the helpless, and those in dire need of favors and healing from God. \n\n- The church stood against bombings during World War II and an earthquake in 1982. It was said that a bomb crashed through the church’s roof, yet it failed to set off inside, saving the sacred establishment miraculously. \n\n- In 2014, the church was declared a Minor Basilica by His Holiness Pope Francis. The following year, the National Museum of the Philippines declared the Minor Basilica of Our Lady of the Most Holy Rosary of Manaoag as a National Cultural Treasure. The formal ceremony of its marker took place in 2018.',
    'Cabongaoan Beach is situated in the town of Burgos, Pangasinan, a more secluded part of the province on the western coast.\n\n- The "Death Pool" is located on a rocky outcrop near Cabongaoan Beach, about a short walk away from the main sandy shore.\n\n- Cabongaoan Beach and the nearby "Death Pool" are natural attractions located in Burgos, Pangasinan, Philippines. This area has become famous for its scenic beauty, white sandy shores, and unique rock formations, particularly the natural pool known as the "Death Pool," which is a tidal pool formed within a rock structure by the sea. Cabongaoan Beach and the Death Pool provide a unique combination of relaxation and adventure, with natural attractions like white sands, clear waters, and rocky tidal pools. The Death Pool is particularly exciting for thrill-seekers, though caution is advised. The area’s natural charm, combined with its quieter, less-touristy atmosphere, makes it a hidden gem for those exploring Pangasinan.',
    'One of the most visited beaches in Pangasinan is the Patar Beach, with clear blue waters embracing a long stretch of fine white sand in Barangay Patar in the town of Bolinao. It is readily accessible when coming from the busy metropolis and is easily a site for calm and relaxation. Camping is allowed along the beach and cottages are also available for rent. The best part? Absolutely free entrance! \n\n- It’s crystal clear waters are complemented by fine golden sand that stretches several kilometers from Patar Bolinao facing the beautiful West Philippine sea. The sands and rock formations have been formed through the unique current that flows through the West Philippine Sea facing the unique Island Features of Patar. Many call it Patar White Sand Beach but this is somewhat inaccurate because the golden sands are very unique from the typical white/beige beaches. We prefer to call it Patar Golden Beach. The beach sand is soft on the feet and perfect for lounging around the whole day.',
    'Enchanted Cave is a natural cave formation that harbors a unique underground pool filled with turquoise water. It is located inside a privately owned resort along the coast of Bolinao. The Enchanted Cave is said to be a huge coral reef that emerged underwater as a result of evolution. It is believed that millions of years ago, the town of Bolinao was once a part of the sea due to the discovery of coral limestone rocks and fossil clams around the area. \n\n- The natural cave now holds a pool of cool water within its womb that is accessible through a 14.2-meter descending stairway. The Enchanted Cave\'s depth is estimated to be around 3 feet to 6 feet, and it can fit up to 16 people. It is well-lit and well-ventilated. However, there are certain areas inside the cave where tourists are restricted from entering for safety measures.',
    'Bolinao Falls is located in Bolinao, Pangasinan, about 20-30 minutes away from the town proper. The falls are surrounded by dense vegetation, creating a serene and secluded environment.\n\n- Bolinao Falls is a popular series of waterfalls located in Bolinao, Pangasinan, Philippines. It’s a natural attraction known for its stunning cascades, turquoise waters, and lush surroundings. Bolinao Falls is actually divided into three separate falls—Bolinao Falls 1, Bolinao Falls 2, and Bolinao Falls 3—each with its own unique charm. This area has become a favorite destination for tourists looking to swim, relax, and experience a refreshing dip in nature.',
    'The lighthouse is located on Patar Beach Road in Barangay Patar, Bolinao, Pangasinan. It is perched atop Punta Piedra Point, about 351 feet above sea level, overlooking the coastline and the West Philippine Sea. Built in 1905, the Cape Bolinao Lighthouse was constructed during the American colonial period. It was built by American engineers with the help of local workers and is one of the oldest lighthouses in the Philippines.\n\n- The Cape Bolinao Lighthouse is a historic and iconic structure located in Bolinao, Pangasinan, Philippines. It offers visitors a glimpse into the past and provides stunning panoramic views of the West Philippine Sea, making it a favorite destination in the region. The lighthouse is one of the best spots in Bolinao for watching the sunset. The golden hour here is particularly beautiful, attracting photographers and nature lovers.',
    'Dasoland is located in Barangay San Vicente, Dasol, Pangasinan, about a 5-6 hour drive from Manila. It’s easily accessible by car or local transportation from nearby towns.\n\n- Dasoland Family Adventure Park is a comprehensive destination offering entertainment, education, and adventure. Its wide range of attractions—from cultural exhibits and animal encounters to adventure rides and gardens—ensures there’s something for everyone. With facilities for picnicking, playgrounds, and accommodations for longer stays, it’s ideal for a family getaway, school field trips, and group outings. Dasoland offers a zipline experience that allows visitors to soar through the air while taking in scenic views of the park.',
    'Tondol Beach is a serene beach known for its calm waters...',
  ];
  void _navigateToDetailsScreen(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          name: spotNames[index],
          imagePath: imagePaths[index],
          description: spotDetails[index],
        ),
      ),
    );
  }

  Widget _buildAnimatedBackground() {
    return Stack(
      children: [
        // Dark blue gradient background
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0D1B2A), Color(0xFF1B263B), Color(0xFF415A77)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Animated pulsing circles
        _buildPulsingCircle(-80, -60, 300, Colors.blueAccent.withOpacity(0.2), 4),
        _buildPulsingCircle(100, -100, 250, Colors.purpleAccent.withOpacity(0.15), 5),
        _buildPulsingCircle(-100, 250, 200, Colors.tealAccent.withOpacity(0.2), 6),
        _buildPulsingCircle(100, 300, 150, Colors.orangeAccent.withOpacity(0.15), 8),
      ],
    );
  }

  Widget _buildPulsingCircle(double left, double top, double size, Color color, int duration) {
    return Positioned(
      left: left,
      top: top,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: size * 0.9, end: size),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourist Spots',
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
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _navigateToDetailsScreen(context, index),
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 12,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Hero(
                          tag: imagePaths[index],
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              imagePaths[index],
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            spotNames[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
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
}

class DetailsScreen extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const DetailsScreen({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
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
            tag: imagePath,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              child: Image.asset(
                imagePath,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1B263B), Color(0xFF0D1B2A)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.white),
                    SizedBox(height: 10),
                    Text(
                      description,
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
