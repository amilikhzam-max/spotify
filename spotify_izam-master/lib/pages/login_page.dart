import 'package:flutter/material.dart';

import '../widgets/social_button.dart';
import '../widgets/custom_textfield.dart';
import '../utils/colors.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),

            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // LOGO
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.music_note,
                    color: Colors.green,
                    size: 45,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "Login to continue listening",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 25),

                // SOCIAL LOGIN
                const SocialButton(
                  text: "Continue with Google",
                  icon: Icons.g_mobiledata,
                ),

                const SizedBox(height: 10),

                const SocialButton(
                  text: "Continue with Facebook",
                  icon: Icons.facebook,
                ),

                const SizedBox(height: 10),

                const SocialButton(
                  text: "Continue with Apple",
                  icon: Icons.apple,
                ),

                const SizedBox(height: 20),

                // EMAIL
                const CustomTextField(
                  hint: "Email or username",
                  obscure: false,
                ),

                const SizedBox(height: 12),

                // PASSWORD
                const CustomTextField(
                  hint: "Password",
                  obscure: true,
                ),

                const SizedBox(height: 10),

                // REMEMBER ME
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),

                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white54),
                    ),

                    const Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot?",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // LOGIN BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 48,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },

                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white54),
                ),

                TextButton(
                  onPressed: () {},

                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}