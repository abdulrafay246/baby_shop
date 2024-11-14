import 'package:flutter/material.dart';

class Cardinputfields extends StatelessWidget {
  const Cardinputfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Card number",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '1234 - 5678 - 9012 - 3456',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          Text(
            "Expires",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'MM/YY',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          Text(
            "CVV",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '123',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
        ]);
  }
}
