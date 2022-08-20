// import 'package:flutter/material.dart';
//
// class Item_Details_Page extends StatefulWidget {
//   const Item_Details_Page({Key? key}) : super(key: key);
//
//   @override
//   State<Item_Details_Page> createState() => _Item_Details_PageState();
// }
//
// class _Item_Details_PageState extends State<Item_Details_Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Items Details"),
//         centerTitle: true,
//         actions: [
//           Center(
//             child: InkWell(
//               onTap: () {},
//               child: const Text("SAVE"),
//             ),
//           ),
//           SizedBox(width: 20),
//         ],
//       ),
//       body: Container(
//         height: 350,
//         width: 600,
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(20),
//         color: Colors.grey.shade200,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Item Name/ Descripation"),
//             const SizedBox(height: 10),
//             TextFormField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: const [
//                 Text("Quantity"),
//                 const Spacer(),
//                 SizedBox(width: 30),
//                 Text("Unit Cost"),
//                 Spacer(),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 9,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: "0",
//                     ),
//                     // onSaved: (){},
//                     // validator: (){},
//                     // controller: ,
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   flex: 9,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: "0.00",
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: const [
//                 Text("SGST"),
//                 const Spacer(),
//                 SizedBox(width: 30),
//                 Text("CGST"),
//                 Spacer(),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 9,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       // border: OutlineInputBorder(),
//                       hintText: "Tax %",
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   flex: 9,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       // border: OutlineInputBorder(),
//                       hintText: "Tax %",
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../Global.dart';

class Item_Details_Page extends StatefulWidget {
  const Item_Details_Page({Key? key}) : super(key: key);

  @override
  State<Item_Details_Page> createState() => _Item_Details_PageState();
}

class _Item_Details_PageState extends State<Item_Details_Page> {
  final GlobalKey<FormState> addItem = GlobalKey<FormState>();

  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController itemQutController = TextEditingController();
  final TextEditingController itemCostController = TextEditingController();
  final TextEditingController itemSGSTController = TextEditingController();
  final TextEditingController itemCGSTController = TextEditingController();

  String? itemName;
  String? itemQut;
  String? itemCost;
  String? itemSGST;
  String? itemCGST;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items Details"),
        centerTitle: true,
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                if (addItem.currentState!.validate()) {
                  addItem.currentState!.save();

                  setState(() {
                    Item i = Item.fromAdd(
                      itemName: itemName.toString(),
                      itemQut: itemQut.toString(),
                      itemCost: itemCost.toString(),
                      itemSGST: itemSGST.toString(),
                      itemCGST: itemCGST.toString(),
                    );
                    Globals.itemsList.add(i);

                    Globals.itemCostTotal.add(itemCost);

                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "second_page", (route) => false);
                  });
                }
              },
              child: const Text("SAVE"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        height: 350,
        width: 600,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        color: Colors.grey.shade200,
        child: Form(
          key: addItem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Item Name/ Descripation"),
              const SizedBox(height: 10),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter item Name...";
                  }
                  return null;
                },
                onSaved: (val) {
                  itemName = val;
                },
                controller: itemNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text("Quantity"),
                  const Spacer(),
                  SizedBox(width: 30),
                  Text("Unit Cost"),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter item Qut...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        itemQut = val;
                      },
                      controller: itemQutController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "0",
                      ),
                      // onSaved: (){},
                      // validator: (){},
                      // controller: ,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter item Cost...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        itemCost = val;
                      },
                      controller: itemCostController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "0.00",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                  Text("SGST"),
                  const Spacer(),
                  SizedBox(width: 30),
                  Text("CGST"),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter item SGST...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        itemSGST = val;
                      },
                      controller: itemSGSTController,
                      decoration: const InputDecoration(
                        // border: OutlineInputBorder(),
                        hintText: "Tax %",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter item CGST...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        itemCGST = val;
                      },
                      controller: itemCGSTController,
                      decoration: const InputDecoration(
                        // border: OutlineInputBorder(),
                        hintText: "Tax %",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
