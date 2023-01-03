
import 'package:flutter/material.dart';
import 'package:flutter_task/Utilits/all_utilits.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustomButton extends StatelessWidget {
  final String title;
  const CoustomButton({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
     decoration: BoxDecoration(
      color: kDefultColor,
      borderRadius: BorderRadius.circular(12)
     ),
      child: Center(child: Text(
      title ,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),)),
    );
  }
}
