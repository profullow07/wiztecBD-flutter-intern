
import 'package:flutter/material.dart';

class CoustomAmount extends StatelessWidget {
  final String amount;
  const CoustomAmount({
    Key? key, required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
     height: 75,
     child: Center(
       child: Text(
         amount,
         style: const TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.bold,
             color: Colors.black),
       ),
     ),
                                  );
  }
}
