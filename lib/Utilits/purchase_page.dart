import 'package:flutter/material.dart';

import 'all_utilits.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
   String dropdownValue = list.first;

  bool isSelect=true;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
         height: 50,
    
      color: isSelect? Colors.green.shade200:Colors.white,
      child: Row(
        children: [
           Expanded(
            flex: 1,
            child: Image.asset(purchaseIcon),),
          Expanded(
            flex: 3,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isDense: true,
                isExpanded: true,
                itemHeight: 56,
                menuMaxHeight: 350,
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp,color: kDefultColor,),
                  elevation: 16,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:kDefultColor),
                  
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
            ),
          ),
        ],
      ),
    );
  }
}