
import 'package:flutter/material.dart';

class Amount2Coustom extends StatelessWidget {
  final String amount;
  final String amount2;
  const Amount2Coustom({
    Key? key, required this.amount,
     required this.amount2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
     height: 75,
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text(
           amount,
           style: const TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black),
         ),
          Text(
           amount2,
           style: const TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.black),
         ),
       ],
     ),
                                  );
  }
}
