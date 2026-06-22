import 'package:flutter/material.dart';
import '../utils/colors.dart';

class MusicCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool large;

  const MusicCard({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle = "",
    this.large = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: large ? 72 : 60,

      margin: const EdgeInsets.only(bottom: 10),

      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [

          // ICON SECTION
          Container(
            width: large ? 72 : 55,
            height: double.infinity,

            decoration: const BoxDecoration(
              color: AppColors.spotifyGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),

            child: const Icon(
              Icons.music_note,
              color: Colors.white,
              size: 28,
            ),
          ),

          const SizedBox(width: 12),

          // TEXT SECTION
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

                if (subtitle.isNotEmpty)
                  const SizedBox(height: 3),

                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          const Icon(
            Icons.play_arrow,
            color: Colors.white70,
            size: 26,
          ),
        ],
      ),
    );
  }
}