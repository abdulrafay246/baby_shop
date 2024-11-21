import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/images/imagepaths.dart';
import 'package:baby_shop/views/auth/singleproduct.dart';
import 'package:baby_shop/widgets/ProductCardScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Icon(Icons.menu, color: Colors.black),
        actions: [
          const Icon(Icons.notifications_none, color: Colors.black),
          const SizedBox(width: 16.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: CustomColors.appBar,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Banner Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                // decoration: BoxDecoration(
                //     color: CustomColors.appBar,
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage(ImagePath.childImage27))),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get winter ready clothes for baby",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text("We help you to grow your"),
                          SizedBox(height: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Shop now",
                              style:
                                  GoogleFonts.inter(color: CustomColors.purple),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      ImagePath.childImage27,
                      width: 100,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Shop by category
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Shop by category",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.0),

            // Category Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.7,
                children: [
                  productcardscreen(
                    imageUrl:
                        ImagePath.childImage17, // Replace with your image URL
                    productName: 'Pink winter jacket',
                    availability: 'Multiple sizes available',
                    price: 674.25,
                    originalPrice: 899.00,
                  ),
                  productcardscreen(
                    imageUrl:
                        ImagePath.childImage18, // Replace with your image URL
                    productName: 'blue winter jacket',
                    availability: 'Multiple sizes available',
                    price: 329.00,
                    originalPrice: 899.00,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
