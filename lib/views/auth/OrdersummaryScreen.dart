import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/images/imagepaths.dart';
import 'package:baby_shop/widgets/Custombutton.dart';
import 'package:baby_shop/widgets/OrderItemCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersummaryScreen extends StatelessWidget {
  const OrdersummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Order Summary',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Address Section
          Row(
            children: [
              const Icon(Icons.radio_button_checked, color: Colors.purple),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oliver cederborg',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Leibnizstraße 16, Wohnheim 6, No: 8X\nClausthal-Zellerfeld, Germany 1380023\nContact : +49 179 111 1010',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child:
                    const Text('Edit', style: TextStyle(color: Colors.purple)),
              ),
            ],
          ),

          const SizedBox(height: 16),
          // Add Address and Delivery Instructions
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              side: BorderSide(color: CustomColors.purple),
            ),
            onPressed: () {},
            child: const Text('Add a new address'),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              side: BorderSide(color: CustomColors.purple),
            ),
            onPressed: () {},
            child: const Text('Add delivery instructions'),
          ),
          const SizedBox(height: 16),
          // Order List
          const Text(
            'Your order',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          Orderitemcard(
            imageUrl: ImagePath.pink_jacket,
            title: 'Pink winter jacket',
            subtitle: 'Bright pink | 9M - 12M',
            price: '\$120.00',
            oldPrice: '\$220.00',
          ),
          Orderitemcard(
            imageUrl: ImagePath.blue_jacket,
            title: 'blue winter jacket',
            subtitle: 'Bright pink | 9M - 12M',
            price: '\$329.00',
            oldPrice: '\$629.00',
          ),
          const SizedBox(height: 16),
          // Delivery & Services
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Delivery & Services for',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Change",
                    style: TextStyle(color: Colors.purple)),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.purple[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('1380023'),
          ),
          const SizedBox(height: 20),
          // Continue Button
          CustomButton(
              text: "Continue",
              backgroundColor: CustomColors.purple,
              onPressed: () {}),
        ]),
      ),
    );
  }
}
