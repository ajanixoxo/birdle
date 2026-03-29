import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/constant.dart';

class ProductCard extends StatelessWidget {
  final Map<String, String> product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.textDark),
          ),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    product["image"]!,
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),

                // content
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                      Text(
                        product["name"]!,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Icon(Icons.timer_outlined, color: Colors.black, size: 14),
                          Text(
                            product["timer"]!,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(
                            width: 1, // 👈 thin width = vertical line
                            height: 10, // 👈 controls how tall the line is
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            product["category"]!,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: AppColors.textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product["price"]!,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textDark,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.background,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 8, // 👈 distance from top
          right: 8, // 👈 distance from right
          child: GestureDetector(
            onTap: () {
              // toggle favourite
            },
            child: Row(
              children: [
                Icon(
                  Icons.star, // or Icons.star_border for empty star
                  color: Colors.amber,
                  size: 18,
                ),
                Text("4.9", style: GoogleFonts.poppins(fontSize: 12)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
