// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// import '../Global.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   final GlobalKey<FormState> invoiceKey = GlobalKey<FormState>();
//
//   final TextEditingController invoicename = TextEditingController();
//
//   Random random = Random();
//
//   // String? Name;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Create Invoice"),
//         centerTitle: true,
//         actions: [
//           Center(
//             child: InkWell(
//               onTap: () {
//                 Navigator.of(context).pushNamed("invoice_details");
//
//                 if (invoiceKey.currentState!.validate()) {
//                   invoiceKey.currentState!.save();
//                 }
//               },
//               child: const Text("NEXT"),
//             ),
//           ),
//           const SizedBox(width: 20),
//         ],
//       ),
//       body: Form(
//         key: invoiceKey,
//         child: Container(
//           margin: const EdgeInsets.all(10),
//           child: SingleChildScrollView(
//             physics: const BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 /// Clients Details
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(7),
//                       topRight: Radius.circular(7),
//                     ),
//                   ),
//                   height: 40,
//                   width: 500,
//                   padding: const EdgeInsets.all(12),
//                   child: const Text(
//                     "Client Details",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pushNamed("clients_details");
//                   },
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(7),
//                         bottomRight: Radius.circular(7),
//                       ),
//                     ),
//                     padding: const EdgeInsets.all(20),
//                     alignment: Alignment.topLeft,
//                     height: 170,
//                     width: 500,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "${Globals.ClientsCompanyName}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           "${Globals.Gst}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           "${Globals.Supply}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           "Gujarat",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           "${Globals.Country}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//
//                 /// Invoice Details
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(7),
//                       topRight: Radius.circular(7),
//                     ),
//                   ),
//                   height: 40,
//                   width: 500,
//                   padding: const EdgeInsets.all(12),
//                   child: const Text(
//                     "Invoice Details",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(7),
//                       bottomRight: Radius.circular(7),
//                     ),
//                   ),
//                   padding: const EdgeInsets.all(20),
//                   alignment: Alignment.topLeft,
//                   height: 210,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Invoice Number",
//                             style: TextStyle(fontSize: 15),
//                           ),
//                           SizedBox(height: 5),
//                           TextFormField(
//                             controller: invoicename,
//                             onSaved: (val) {
//                               setState(() {
//                                 random.nextInt(10).toString();
//                                 Globals.Name = val;
//                               });
//                             },
//                             validator: (val) {
//                               if (val!.isEmpty) {
//                                 return "Enter Name First";
//                               }
//                               return null;
//                             },
//                             decoration: const InputDecoration(
//                                 border: OutlineInputBorder()),
//                           ),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text("Invoice Date"),
//                           Text("Due Date")
//                         ],
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: TextFormField(
//                               decoration: const InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 hintText: "DD/MM/YYYY",
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Expanded(
//                             // flex: 9,
//                             child: TextFormField(
//                               decoration: const InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 hintText: "DD/MM/YYYY",
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Column(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: [
//                       //     SizedBox(height: 5),
//                       //     Column(
//                       //       children: [],
//                       //     )
//                       //   ],
//                       // ),
//                     ],
//                   ),
//                 ),
//
//                 /// Item Details
//                 const SizedBox(height: 10),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(7),
//                       topRight: Radius.circular(7),
//                     ),
//                   ),
//                   height: 40,
//                   width: 500,
//                   padding: const EdgeInsets.all(12),
//                   child: const Text(
//                     "Item Details",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(7),
//                       bottomRight: Radius.circular(7),
//                     ),
//                   ),
//                   padding: const EdgeInsets.all(20),
//                   alignment: Alignment.topLeft,
//                   height: 260,
//                   width: 500,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           InkWell(
//                             onTap: () {},
//                             child: const Text(
//                               "Clear All Items",
//                               style: TextStyle(color: Colors.lightBlue),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           FloatingActionButton(
//                             onPressed: () {
//                               Navigator.of(context).pushNamed("items_details");
//                             },
//                             mini: true,
//                             child: const Icon(Icons.add),
//                           ),
//                           const SizedBox(width: 20),
//                           const Text("Add Line Item")
//                         ],
//                       ),
//                       const SizedBox(height: 25),
//                       const Text(
//                         "Total Summary",
//                         style:
//                             const TextStyle(color: Colors.blue, fontSize: 16),
//                       ),
//                       const SizedBox(height: 10),
//                       Container(
//                         padding: const EdgeInsets.all(20),
//                         height: 100,
//                         width: 550,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 80),
//                                   child: Text(
//                                     "Subtotal ✏",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text("00.00"),
//                               ],
//                             ),
//                             const SizedBox(height: 20),
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 0),
//                                   child: Text(
//                                     "Total ✏",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   "00.00",
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 /// OTHER Details
//                 const SizedBox(height: 10),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(7),
//                       topRight: Radius.circular(7),
//                     ),
//                   ),
//                   height: 40,
//                   width: 500,
//                   padding: const EdgeInsets.all(12),
//                   child: const Text(
//                     "Other Details",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(7),
//                       bottomRight: Radius.circular(7),
//                     ),
//                   ),
//                   padding: const EdgeInsets.all(20),
//                   height: 190,
//                   width: 550,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Notes",
//                       ),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: "It was great doing business with you.",
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       const Text(
//                         "Terms & Conditions",
//                       ),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: "Please make the payments by due date.",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 /// Your Company Details
//                 const SizedBox(height: 10),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(7),
//                       topRight: Radius.circular(7),
//                     ),
//                   ),
//                   height: 40,
//                   width: 500,
//                   padding: const EdgeInsets.all(12),
//                   child: const Text(
//                     "Your Company Details",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pushNamed("company_detais");
//                   },
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(7),
//                         bottomRight: Radius.circular(7),
//                       ),
//                     ),
//                     padding: const EdgeInsets.all(20),
//                     alignment: Alignment.topLeft,
//                     height: 170,
//                     width: 500,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "${Globals.CompanyName}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           "${Globals.GSTNO}",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           "Your Company Details ",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../Global.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    Globals.total = 0;

    setState(() {
      for (int i = 0; i < Globals.itemCostTotal.length; i++) {
        print(Globals.total);
        Globals.total = Globals.total + int.parse(Globals.itemCostTotal[i]);
        print(Globals.total);
      }
    });
  }

  final GlobalKey<FormState> invoiceKey = GlobalKey<FormState>();

  final TextEditingController invoicename = TextEditingController();

  // String? Name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Invoice"),
        centerTitle: true,
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("invoice_details");

                if (invoiceKey.currentState!.validate()) {
                  invoiceKey.currentState!.save();
                }
              },
              child: const Text("NEXT"),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Form(
        key: invoiceKey,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                /// Clients Details
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  height: 40,
                  width: 500,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Client Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("clients_details");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    height: 170,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${Globals.ClientsCompanyName}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${Globals.Gst}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${Globals.Supply}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Gujarat",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${Globals.Country}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                /// Invoice Details
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  height: 40,
                  width: 500,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Invoice Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  height: 220,
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Invoice Number",
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                                border: const OutlineInputBorder()),
                            controller: invoicename,
                            onSaved: (val) {
                              setState(() {
                                Globals.Name = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Name First";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text("Invoice Date"),
                          Text("Due Date")
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            // flex: 9,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "DD/MM/YYYY",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                /// Item Details
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  height: 40,
                  width: 500,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Item Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  // height: 260,
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Globals.itemsList.clear();
                                Globals.total = 0;
                              });
                            },
                            child: const Text(
                              "Clear All Items",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("items_details");
                            },
                            mini: true,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(width: 20),
                          const Text("Add Line Item")
                        ],
                      ),
                      const SizedBox(height: 25),
                      ...Globals.itemsList.map(
                        (e) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(e.itemName),
                            Text(e.itemQut),
                            Text(e.itemCost),
                            Text(e.itemSGST),
                            Text(e.itemCGST),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Total Summary",
                        style:
                            const TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 100,
                        width: 550,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 80),
                                  child: Text(
                                    "Subtotal ✏ ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Spacer(),
                                Text("${Globals.total}"),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text(
                                    "Total ✏  ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "${Globals.total}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// OTHER Details
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  height: 40,
                  width: 500,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Other Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  height: 190,
                  width: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Notes",
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "It was great doing business with you.",
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Terms & Conditions",
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Please make the payments by due date.",
                        ),
                      ),
                    ],
                  ),
                ),

                /// Your Company Details
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  height: 40,
                  width: 500,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Your Company Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("company_detais");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    height: 170,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${Globals.CompanyName}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${Globals.GSTNO}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Your Company Details ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
