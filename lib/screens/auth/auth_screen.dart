import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/constant.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -120,
              left: -100,
              child: Container(
                width: 600,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFF31B20),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ), // your logo here

                    const SizedBox(height: 40),

                    // ElevatedButton(
                    //   onPressed: () => context.go('/auth'),
                    //   child: const Text('Get Started'),
                    // ),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/plate_of_rice.png",
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: SizedBox(
                  width: 270,
                  height: 320,
                  child: DefaultTabController(
                    length: 2, // number of tabs
                    child: Column(
                      children: [
                        TabBar(
                          indicatorWeight: 2,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.red,
                          dividerColor: Colors.transparent,
                          labelColor: AppColors.primary,
                          unselectedLabelColor: AppColors.textDark,
                          tabs: [
                            Tab(text: "Login"),
                            Tab(text: "Sign Up"),
                          ],
                        ),

                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email",
                                            style: GoogleFonts.poppins(
                                              color: AppColors.textDark,
                                            ),
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.email_outlined,
                                                color: AppColors.textDark,
                                              ),
                                              border: UnderlineInputBorder(),
                                              floatingLabelStyle: TextStyle(
                                                color: Colors.red,
                                              ), // when active
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Password",
                                            style: GoogleFonts.poppins(
                                              color: AppColors.textDark,
                                            ),
                                          ),
                                          TextField(
                                            style: TextStyle(
                                              color: AppColors.textDark,
                                            ),
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: UnderlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.lock_outline,
                                                color: AppColors.textDark,
                                              ),
                                              floatingLabelStyle: TextStyle(
                                                color: Colors.red,
                                              ), // when active
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment
                                                .topRight, // topLeft, topCenter, bottomRight...
                                            child: Text('Forgotten Password?',
                                                style: GoogleFonts.poppins(
                                                  color: AppColors.textDark,
                                                  fontSize: 12,
                                                )),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Handle login logic here
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors.primary,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 80,
                                          vertical: 15,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                      ),
                                      child: Text(
                                        "Login",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                                 MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email",
                                            style: GoogleFonts.poppins(
                                              color: AppColors.textDark,
                                            ),
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.email_outlined,
                                                color: AppColors.textDark,
                                              ),
                                              border: UnderlineInputBorder(),
                                              floatingLabelStyle: TextStyle(
                                                color: Colors.red,
                                              ), // when active
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Password",
                                            style: GoogleFonts.poppins(
                                              color: AppColors.textDark,
                                            ),
                                          ),
                                          TextField(
                                            style: TextStyle(
                                              color: AppColors.textDark,
                                            ),
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: UnderlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.lock_outline,
                                                color: AppColors.textDark,
                                              ),
                                              floatingLabelStyle: TextStyle(
                                                color: Colors.red,
                                              ), // when active
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment
                                                .topRight, // topLeft, topCenter, bottomRight...
                                            child: Text('Forgotten Password?',
                                                style: GoogleFonts.poppins(
                                                  color: AppColors.textDark,
                                                  fontSize: 12,
                                                )),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Handle login logic here
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors.primary,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 80,
                                          vertical: 15,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                      ),
                                      child: Text(
                                        "Sign Up",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
