import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/bottom_nav.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover Music",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },

                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // TRENDING
              sectionTitle("🔥 Trending Now"),

              const SizedBox(height: 12),

              horizontalCard("Midnight City", "M83", "assets/midnight.jpg"),
              horizontalCard("Sunflower", "Post Malone", "assets/sunflower.jpg"),
              horizontalCard("Dandelions", "Ruth B.", "assets/dandelions.jpg"),

              const SizedBox(height: 25),

              // MOOD PLAYLIST
              sectionTitle("🎧 Mood Mix"),

              const SizedBox(height: 12),

              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),

                children: const [
                  MoodCard(title: "Chill Vibes", icon: Icons.nightlight_round),
                  MoodCard(title: "Workout", icon: Icons.fitness_center),
                  MoodCard(title: "Focus", icon: Icons.headphones),
                  MoodCard(title: "Party", icon: Icons.music_note),
                ],
              ),

              const SizedBox(height: 25),

              // NEW RELEASES
              sectionTitle("🆕 New Releases"),

              const SizedBox(height: 12),

              songTile("As It Was", "Harry Styles"),
              songTile("Easy On Me", "Adele"),
              songTile("Stay", "The Kid LAROI"),

              songTile("Ghost", "Justin Bieber"),
              songTile("Bad Habits", "Ed Sheeran"),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const SpotifyBottomNav(selectedIndex: 0),
    );
  }

  // SECTION TITLE
  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // HORIZONTAL CARD
  Widget horizontalCard(String title, String artist, String image) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  artist,
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),

          const Icon(Icons.play_arrow, color: Colors.green, size: 30),
        ],
      ),
    );
  }

  // SONG TILE
  Widget songTile(String title, String artist) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: const Icon(Icons.music_note, color: Colors.white),

      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),

      subtitle: Text(
        artist,
        style: const TextStyle(color: Colors.white54),
      ),

      trailing: const Icon(Icons.play_circle_fill, color: Colors.green),
    );
  }
}

// MOOD CARD
class MoodCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const MoodCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}