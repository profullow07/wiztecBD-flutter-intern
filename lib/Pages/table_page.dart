import 'package:flutter/material.dart';
import 'package:flutter_task/Utilits/all_utilits.dart';
import 'package:flutter_task/Utilits/amount2_coustom.dart';
import 'package:flutter_task/Utilits/coustom_amount.dart';
import 'package:flutter_task/Utilits/coustom_button.dart';
import 'package:flutter_task/Utilits/coustom_towrow.dart';
import 'package:flutter_task/Utilits/custom_tablerow.dart';
import 'package:flutter_task/Utilits/purchase_page.dart';
import 'package:flutter_task/Utilits/sell_page.dart';
import 'package:flutter_task/Utilits/stock_invetory.dart';
import 'package:google_fonts/google_fonts.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      // appbar code
      appBar: AppBar(
        backgroundColor: kDefultColor,
        title: const Text(
          "Table Data",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // drawer code
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer header
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kDefultColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.cancel,
                      size: 45,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Demo Limited Company",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            // purchase code
            const PurchasePage(),
            const SellPage(),
            const StockInventoryPage()
          ],
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 10,
          ),
          child: Column(
            children: [
              // dues code
              Table(
                border: TableBorder.all(color: Colors.black38),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const <int, TableColumnWidth>{
                  1: FlexColumnWidth(0.3),
                },
                children: [
                  TableRow(children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            color: kDefultColor,
                            child: Text(
                              "Dues",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 50,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Previous Due",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "01 January 2022",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Due",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "৳20000",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF37048)),
                          ),
                        ],
                      ),
                    ),
                  ])
                ],
              ),

              // purchase code
              Table(
                border: TableBorder.all(color: Colors.black38),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const <int, TableColumnWidth>{
                  1: FlexColumnWidth(0.3),
                },
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color: kDefultColor,
                              child: Text(
                                "Purchase",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 50,
                              child: Column(
                                children: [
                                  // invoice date code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice Date :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "01 January 2022",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // invoice number code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice No :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "5386328",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Table(
                              border: TableBorder.all(color: Colors.black38),
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              columnWidths: const <int, TableColumnWidth>{
                                1: FlexColumnWidth(0.5),
                              },
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // Test product 01
                                const TableRow(
                                  children: [
                                    CoustomTitle(
                                      title: "Test product 01",
                                      subtitle: "200 pcs x 200",
                                    ),
                                    CoustomAmount(
                                      amount: "৳20000",
                                    ),
                                  ],
                                ),
                                //Test product 02
                                const TableRow(
                                  children: [
                                    CoustomTitle(
                                      title: "Test product 01",
                                      subtitle: "200 pcs x 300",
                                    ),
                                    CoustomAmount(
                                      amount: "৳60000",
                                    ),
                                  ],
                                ),
                                //Test product 03
                                const TableRow(
                                  children: [
                                    CoustomTitle(
                                      title: "Test product 01",
                                      subtitle: "20 pcs x 200",
                                    ),
                                    CoustomAmount(
                                      amount: "৳4000",
                                    ),
                                  ],
                                ),

                                // discount

                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Discount", subtitle: "Vat"),
                                  Amount2Coustom(amount: "৳0", amount2: "৳0")
                                ]),

                                // grand total
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Grand Total",
                                      subtitle: "Previous Due"),
                                  Amount2Coustom(
                                      amount: "৳50000", amount2: "৳20000")
                                ]),

                                // total amount
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Total Amount",
                                      subtitle: "Tatal Payment"),
                                  Amount2Coustom(
                                      amount: "৳70000", amount2: "৳40000")
                                ]),

                                // remaining balance
                                const TableRow(children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Remaining Balance",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  CoustomAmount(amount: "৳30000"),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 600,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Due",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "৳20000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF37048)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // payment
              Table(
                border: TableBorder.all(color: Colors.black38),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const <int, TableColumnWidth>{
                  1: FlexColumnWidth(0.3),
                },
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color: kDefultColor,
                              child: Text(
                                "Payment",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 50,
                              child: Column(
                                children: [
                                  // invoice date code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice Date :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "01 January 2022",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // invoice number code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice No :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "5386328",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Table(
                              border: TableBorder.all(color: Colors.black38),
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              columnWidths: const <int, TableColumnWidth>{
                                1: FlexColumnWidth(0.5),
                              },
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // discount

                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Discount", subtitle: "Vat"),
                                  Amount2Coustom(amount: "৳0", amount2: "৳0")
                                ]),

                                // grand total
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Grand Total",
                                      subtitle: "Previous Due"),
                                  Amount2Coustom(
                                      amount: "৳0", amount2: "৳30000")
                                ]),

                                // total amount
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Total Amount",
                                      subtitle: "Tatal Payment"),
                                  Amount2Coustom(
                                      amount: "৳30000", amount2: "৳10000")
                                ]),

                                // remaining balance
                                const TableRow(children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  CoustomAmount(amount: "৳20000"),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 360,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Due",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "৳20000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF37048)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // return

              Table(
                border: TableBorder.all(color: Colors.black38),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const <int, TableColumnWidth>{
                  1: FlexColumnWidth(0.3),
                },
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color: kDefultColor,
                              child: Text(
                                "Return",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 120,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // invoice date code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice Date :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "01 January 2022",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // invoice number code
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Invoice No :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "5386328",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  // return date
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Return Date :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "01 January 2022",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  // return no
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Return No :",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "5386328",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Table(
                              border: TableBorder.all(color: Colors.black38),
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              columnWidths: const <int, TableColumnWidth>{
                                1: FlexColumnWidth(0.5),
                              },
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // Test product 01
                                const TableRow(
                                  children: [
                                    CoustomTitle(
                                      title: "Test product 01",
                                      subtitle: "100 pcs x 50",
                                    ),
                                    CoustomAmount(
                                      amount: "৳5000",
                                    ),
                                  ],
                                ),

                                // discount

                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Discount", subtitle: "Vat"),
                                  Amount2Coustom(amount: "৳0", amount2: "৳0")
                                ]),

                                // grand total
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Grand Total",
                                      subtitle: "Previous Due"),
                                  Amount2Coustom(
                                      amount: "৳5000", amount2: "৳20000")
                                ]),

                                // total amount
                                const TableRow(children: [
                                  CoustomTwoRow(
                                      title: "Total Amount",
                                      subtitle: "Tatal Paid"),
                                  Amount2Coustom(
                                      amount: "৳70000", amount2: "৳0")
                                ]),

                                // remaining balance
                                const TableRow(children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  CoustomAmount(amount: "৳30000"),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Due",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "৳20000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF37048)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              const CoustomButton(title: "Pay the balance")
            ],
          ),
        ),
      ),
    );
  }
}
