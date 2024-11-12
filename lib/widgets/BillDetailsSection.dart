import 'package:baby_shop/Colors/customcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Billdetailssection extends StatelessWidget {
  const Billdetailssection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Item Total Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Item total', style: GoogleFonts.inter(fontSize: 16)),
            Text('\$449.00', style: GoogleFonts.inter(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 8),

        // Delivery Charges Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Delivery free 1.0 kms',
                    style: GoogleFonts.inter(fontSize: 16)),
                SizedBox(width: 5),
                Icon(Icons.info_outline,
                    size: 16, color: CustomColors.textField),
              ],
            ),
            Text('\$03.00', style: GoogleFonts.inter(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 8),

        // Additional Delivery Info
        Text(
          'This fee goes towards paying your delivery partner fairly',
          style: GoogleFonts.inter(color: CustomColors.textField, fontSize: 12),
        ),
      ],
    );
  }
}
