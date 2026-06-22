import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),

        filled: true,
        fillColor: AppColors.card,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.spotifyGreen,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}