import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.background,
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            spacing: 20,
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/user.png",
                            ),
                            radius: 20,
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // 👈 align text to left
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Hello Timolek",
                                style: GoogleFonts.poppins(
                                  color: AppColors.textDark,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                      size: 14,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Mark Hostel",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Transform.rotate(
                                      angle:
                                          -1.5708, // 90 degrees in radians (rotates chevron left → points down)
                                      child: Icon(
                                        Icons.chevron_left,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50, // must equal width for a perfect circle
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle, // 👈 easiest way
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 24,
                        color: AppColors.background,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: AppColors.textDark,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.red,
                    ), // when active
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    hintText: "Search for Food",
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recommended",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      Column(
                        spacing: 3,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.accent,
                              borderRadius: BorderRadius.circular(12),

                              ),
                            child: Transform.scale(
                              scale: 1.5,  
                              child: Image.asset("assets/images/pizza.png"),
                              )
                            ,
                          ),
                          Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                        Column(
                        spacing: 3,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.accent,
                              borderRadius: BorderRadius.circular(12),

                              ),
                            child: Transform.scale(
                              scale: 1.5,  
                              child: Image.asset("assets/images/plate_of_rice.png"),
                              )
                            ,
                          ),
                          Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                        Column(
                        spacing: 3,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.accent,
                              borderRadius: BorderRadius.circular(12),

                              ),
                            child: Transform.scale(
                              scale: 1.5,  
                              child: Image.asset("assets/images/snacks.png"),
                              )
                            ,
                          ),
                          Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                        Column(
                        spacing: 3,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.accent,
                              borderRadius: BorderRadius.circular(12),

                              ),
                            child: Transform.scale(
                              scale: 1.5,  
                              child: Image.asset("assets/images/pizza.png"),
                              )
                            ,
                          ),
                          Text(
                            "Pizza",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
