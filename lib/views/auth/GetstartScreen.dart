import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/images/imagepaths.dart';
import 'package:baby_shop/widgets/Custombutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetstartScreen extends StatelessWidget {
  const GetstartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text('Skip',
              style: GoogleFonts.inter(
                  color: Colors.purple,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Pick Every\nClothes\nthat you Want!",
                style: GoogleFonts.inter(
                    fontSize: 45, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Explore the latest shoppig trends & curated\nstyle of fashion & lifestyle creations.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(ImagePath.childImage1),
              SizedBox(height: 20),
              CustomButton(
                  text: "Get Start",
                  backgroundColor: CustomColors.purple,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
