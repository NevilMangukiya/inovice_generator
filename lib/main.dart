import 'package:flutter/material.dart';
// import 'package:invoice_generator/pdf.dart';
import 'package:generator_invoice/screens/client_details_page.dart';
import 'package:generator_invoice/screens/invoice_details.dart';
import 'package:generator_invoice/screens/item_details_page.dart';
import 'package:generator_invoice/screens/second_page.dart';
import 'package:generator_invoice/screens/your_company_details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      routes: {
        "/": (context) => const HomePage(),
        "second_page": (context) => const MainPage(),
        "clients_details": (context) => const Client_details(),
        "items_details": (context) => const Item_Details_Page(),
        "company_detais": (context) => const Your_Company_Details(),
        "invoice_details": (context) => const Invoice_Page(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Generator"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("second_page");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),
            Expanded(
              flex: 12,
              child: Container(
                height: 250,
                width: 250,
                alignment: Alignment.center,
                child: const Image(
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/invoice.png"),
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Column(
                children: const [
                  Text(
                    "No Invoice + Create Invoice",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
