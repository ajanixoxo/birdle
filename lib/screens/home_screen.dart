import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/constant.dart';
import '../component/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  final PageController _controller = PageController(viewportFraction: 0.85);

  final List<Map<String, String>> banners = [
    {
      "title": "Special Offer",
      "subtitle": "Get Special Discount",
      "image": "assets/images/pizza.png",
      "buttonText": "Order Now",
    },
    {
      "title": "Up to 25%",
      "subtitle": "Get Special Discount",
      "image": "assets/images/plate_of_rice.png",
      "buttonText": "Explore",
    },
    {
      "title": "New Arrival",
      "subtitle": "Get Special Discount",
      "image": "assets/images/chicken.png",
      "buttonText": "See Menu",
    },
  ];

  final List<Map<String, String>> products = [
    {
      "name": "Jollof Rice",
      "category": "Local Food",
     "price": "₦1,800",
    "image": "assets/images/plate_of_rice.png",
    }
  ];

  @override
  void dispose() {
    _controller.dispose(); // 👈 always dispose controller
    super.dispose();
  }

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
                      _buildCategory("Pizza", "assets/images/pizza.png", 1.5),
                      _buildCategory(
                        "Rice",
                        "assets/images/plate_of_rice.png",
                        0.8,
                      ),
                      _buildCategory("Snacks", "assets/images/snacks.png", 1.5),
                      _buildCategory(
                        "Chicken",
                        "assets/images/chicken.png",
                        1.5,
                      ),
                    ],
                  ),
                ],
              ),

              // Add Carousel
              Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: banners.length,
                      onPageChanged: (index) {
                        setState(() => _currentIndex = index);
                      },
                      itemBuilder: (context, index) {
                        final item = banners[index];
                        return _buildBannerCard(item);
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  // dots indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(banners.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: _currentIndex == index ? 20 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? AppColors.primary
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ],
              ),

              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: products.map((product) {
                  return ProductCard(
                    product: product,
                  ); // 👈 use it like any widget
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategory(String label, String imagePath, double scale) {
  return Column(
    spacing: 3,
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Transform.scale(scale: scale, child: Image.asset(imagePath)),
      ),
      Text(
        label,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget _buildBannerCard(Map<String, String> item) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.16, 1.0], // 👈 matches your 16% and 100% stops
          colors: [
            Color(0xFF910407).withOpacity(1.0), // 16% stop — 100% opacity
            Color(0xFFF31B20).withOpacity(0.51), // 100% stop — 51% opacity
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          // left — text + button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Text(
                  item["subtitle"]!,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item["title"]!,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    item["buttonText"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // right — image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              item["image"]!,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
  );
}
