import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1DB954), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),

                child: Column(
                  children: [

                    const SizedBox(height: 20),

                    // PROFILE PICTURE
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),

                      child: const CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/profile.jpg"),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // NAME (UPDATED)
                    const Text(
                      "Amil Ikhzam",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    // USERNAME
                    const Text(
                      "@amil_spotify",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // STATS
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        ProfileStat(number: "85", title: "Playlists"),
                        ProfileStat(number: "2.1K", title: "Followers"),
                        ProfileStat(number: "180", title: "Following"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // MENU
              ProfileMenu(
                icon: Icons.favorite,
                title: "Liked Songs",
                onTap: () {},
              ),

              ProfileMenu(
                icon: Icons.library_music,
                title: "Your Library",
                onTap: () {},
              ),

              ProfileMenu(
                icon: Icons.history,
                title: "Listening History",
                onTap: () {},
              ),

              ProfileMenu(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {},
              ),

              ProfileMenu(
                icon: Icons.logout,
                title: "Log Out",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// STAT WIDGET
class ProfileStat extends StatelessWidget {
  final String number;
  final String title;

  const ProfileStat({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}

// MENU WIDGET
class ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),

      child: ListTile(
        leading: Icon(icon, color: Colors.green),

        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 16,
        ),

        onTap: onTap,
      ),
    );
  }
}