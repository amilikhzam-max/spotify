import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/bottom_nav.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.library_music, color: Colors.white),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "Your Library",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Spacer(),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.white),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // FILTER CHIPS
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    filterChip("Playlist"),
                    const SizedBox(width: 8),
                    filterChip("Artists"),
                    const SizedBox(width: 8),
                    filterChip("Albums"),
                    const SizedBox(width: 8),
                    filterChip("Downloaded"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // SORT
              Row(
                children: const [
                  Icon(Icons.swap_vert, color: Colors.white54),
                  SizedBox(width: 5),
                  Text(
                    "Recently added",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // LIST LIBRARY
              Expanded(
                child: ListView(
                  children: [

                    libraryTile("Liked Songs", "Playlist • 120 songs", Icons.favorite, Colors.pink),

                    libraryTile("Top Artists", "Collection", Icons.person, Colors.blue),

                    libraryTile("Workout Mix", "Playlist • 45 songs", Icons.fitness_center, Colors.orange),

                    libraryTile("Chill Hits", "Playlist • 80 songs", Icons.spa, Colors.green),

                    libraryTile("Raim Laode", "Artist", Icons.music_note, Colors.purple),

                    libraryTile("Sheila On 7", "Band", Icons.album, Colors.yellow),

                    libraryTile("Fiersa Besari", "Artist", Icons.queue_music, Colors.teal),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const SpotifyBottomNav(selectedIndex: 2),
    );
  }

  // FILTER CHIP
  Widget filterChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }

  // LIBRARY TILE
  Widget libraryTile(String title, String subtitle, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [

          // ICON
          Container(
            width: 50,
            height: 50,

            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Icon(icon, color: color),
          ),

          const SizedBox(width: 12),

          // TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),

          const Icon(Icons.more_vert, color: Colors.white54),
        ],
      ),
    );
  }
}