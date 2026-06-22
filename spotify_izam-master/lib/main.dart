import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'utils/colors.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Spotify Clone",

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.spotifyGreen,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),

        useMaterial3: true,
      ),

      home: const LoginPage(),
    );
  }
}