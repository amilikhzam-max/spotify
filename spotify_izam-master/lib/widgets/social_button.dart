import 'package:flutter/material.dart';
import '../utils/colors.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  const SocialButton({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,

      child: OutlinedButton.icon(
        onPressed: onPressed ?? () {},

        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),

        label: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),

        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white10,
          side: const BorderSide(color: AppColors.border),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),

          padding: const EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
}