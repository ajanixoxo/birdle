import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../constant/constant.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// StatefulWidget because we need to DO something when the screen loads
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigate();   // as soon as screen loads, start the timer
  }

  // This function waits 3 seconds then goes to welcome screen
  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 3));  // wait 3 seconds
    if (mounted) context.go('/welcome');               // then go to welcome
    //  "mounted" checks the screen is still open before navigating
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,   // your brand color here
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 100),  // your logo here
            Text(
              'Chophive', // your app name/logo here
              style:GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
          ),
          )
          ],
        ),
      ),
    );
  }
}