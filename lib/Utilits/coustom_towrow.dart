import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustomTwoRow extends StatelessWidget {
  final String title;
  final String subtitle;


  const CoustomTwoRow(
    {
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
         
        ],
      ),
    );
  }
}
