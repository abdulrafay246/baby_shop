import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/widgets/BillDetailsSection.dart';
import 'package:baby_shop/widgets/CardInputFields.dart';
import 'package:baby_shop/widgets/Custombutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentmethodScreen extends StatelessWidget {
  const PaymentmethodScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Select a payment method',
          style: GoogleFonts.inter(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 10),
            Text(
              'Credit and Debit cards',
              style:
                  GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text('+ Add Card',
                  style: GoogleFonts.inter(color: CustomColors.purple)),
            ),
            Cardinputfields(),
            const SizedBox(height: 20),
            // Billdetailssection(),
            // const SizedBox(height: 20),
            CustomButton(
                text: "Make Payment",
                backgroundColor: CustomColors.purple,
                onPressed: () {}),
          ]),
        ),
      ),
    );
  }
}
