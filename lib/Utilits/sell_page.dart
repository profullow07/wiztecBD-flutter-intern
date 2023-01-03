import 'package:flutter/material.dart';

import 'all_utilits.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
   String dropdownValue = selllist.first;

  bool isSelect=true;

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 50,
    
      color: Colors.white,
      child: Row(
        children: [
           Expanded(
            flex: 1,
            child: Image.asset(sellIcon),),
          Expanded(
            flex: 3,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isDense: true,
                isExpanded: true,
                itemHeight: 56,
                menuMaxHeight: 350,
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                  elevation: 16,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:Colors.black),
                  
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: selllist.map<DropdownMenuItem<String>>((String value) {
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