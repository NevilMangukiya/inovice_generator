`import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import '../Global.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void main() {
  runApp(
    const MaterialApp(
      home: Invoice_Page(),
    ),
  );
}

class Invoice_Page extends StatefulWidget {
  const Invoice_Page({Key? key}) : super(key: key);

  @override
  State<Invoice_Page> createState() => _Invoice_PageState();
}

class _Invoice_PageState extends State<Invoice_Page> {
  final pdf = pw.Document();

  @override
  // PDF

  initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    "Tax Invoice",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              pw.Text(
                "${Globals.CompanyName}",
                style: const pw.TextStyle(
                  fontSize: 22,
                ),
              ),
              pw.Text(
                "${Globals.CompanyName}",
                style: const pw.TextStyle(
                  fontSize: 16,
                ),
              ),
              pw.Text(
                "${Globals.AddressCompany}",
                style: const pw.TextStyle(
                  fontSize: 16,
                ),
              ),
              pw.Row(
                children: [
                  pw.Text(
                    "${Globals.City}, ",
                    style: const pw.TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  pw.Text(
                    "${Globals.State}, ",
                    style: const pw.TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  pw.Text(
                    "${Globals.Zip}",
                    style: const pw.TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              pw.Text(
                "${Globals.State}",
                style: const pw.TextStyle(
                  fontSize: 16,
                ),
              ),
              pw.Text(
                "${Globals.CompanyCountry}",
                style: const pw.TextStyle(
                  fontSize: 16,
                ),
              ),
              pw.SizedBox(height: 60),
              pw.Row(
                // mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Bill To ${Globals.Bill}",
                        style: const pw.TextStyle(fontSize: 18),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "${Globals.ClientsCompanyName}",
                        style: const pw.TextStyle(fontSize: 22),
                      ),
                      pw.Text(
                        "${Globals.Address}",
                        style: const pw.TextStyle(fontSize: 16),
                      ),
                      // pw.Text("FRFRFe"),
                      pw.Row(
                        children: [
                          pw.Text(
                            "${Globals.ClientCity}, ",
                            style: const pw.TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          pw.Text(
                            "${Globals.ClientState}, ",
                            style: const pw.TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          pw.Text(
                            "${Globals.ClientZip}",
                            style: const pw.TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      pw.Text(
                        "${Globals.ClientState}",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      pw.Text(
                        "${Globals.Country}",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  pw.Spacer(),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Invoice No      ${Globals.Name}",
                        style: const pw.TextStyle(fontSize: 20),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "Invoice Date   ${DateFormat('dd-MM-yyyy').format(
                          DateTime.now(),
                        )}",
                        style: const pw.TextStyle(fontSize: 20),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        "Due Date        ${DateFormat('dd-MM-yyyy').format(
                          DateTime.now(),
                        )}",
                        style: const pw.TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Text(
                "Place Of Supply: ${Globals.Supply}",
                style: const pw.TextStyle(fontSize: 16),
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                children: [
                  pw.Container(
                    padding: const pw.EdgeInsets.all(5),
                    height: 25,
                    width: 500,
                    color: const PdfColor.fromInt(2),
                    child: pw.Row(
                      children: [
                        pw.Text(
                          "Item Description",
                          style: pw.TextStyle(
                            fontSize: 13,
                            color: PdfColor.fromHex(
                              "FFFFFF",
                            ),
                          ),
                        ),
                        pw.Spacer(),
                        pw.Text(
                          "Qty",
                          style: pw.TextStyle(
                            fontSize: 13,
                            color: PdfColor.fromHex(
                              "FFFFFF",
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 20),
                        pw.Text(
                          "Rate",
                          style: pw.TextStyle(
                            fontSize: 13,
                            color: PdfColor.fromHex(
                              "FFFFFF",
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 20),
                        pw.Text(
                          "Amount",
                          style: pw.TextStyle(
                            fontSize: 13,
                            color: PdfColor.fromHex(
                              "FFFFFF",
                            ),
                          ),
                        ),
                        ...Globals.itemsList.map(
                          (e) => pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.Expanded(
                                flex: 8,
                                child: pw.Text(
                                  "${Globals.itemsList[e].itemName}",
                                  // style: pw.TextStyle()
                                ),
                              ),
                              pw.Expanded(
                                child: pw.Text(
                                  "${Globals.itemsList[e]}",
                                  // style: pw.TextStyle(),
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Text(
                                  "${Globals.itemsList[e].itemCost}",
                                  // style: pw.TextStyle(),
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Text(
                                  "${Globals.itemCostTotal[e]}",
                                  // h
                                ),
                              ),
                            ],
                          ),
                        ),
                        ...Globals.itemsList.map(
                          (e) => pw.Text(e.itemName),
                          // pw.Text(e.itemQut),
                          // pw.Text(e.itemCost),
                          // pw.Text(e.itemSGST),
                          // pw.Text(e.itemCGST
                          // ),
                          //
                          //                     ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Preview"),
        centerTitle: true,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pushNamed("pdf_page");
          //   },
          //   icon: Icon(Icons.navigate_next),
          // ),
          IconButton(
            onPressed: () async {
              Uint8List bytes = await pdf.save();

              await Printing.layoutPdf(onLayout: (format) => bytes);
            },
            icon: const Icon(Icons.print),
          ),
        ],
      ),
      body: Container(
        height: 400,
        width: 650,
        color: Colors.lightBlue,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("22/05/2005"),
            const Divider(thickness: 2),
            const SizedBox(height: 3),
            Row(
              children: [
                const Text("Invoice Number", style: TextStyle(fontSize: 15)),
                const Spacer(),
                Text("${Globals.Name}"),
              ],
            ),
            const SizedBox(height: 3),
            const Divider(thickness: 2),
            const SizedBox(height: 3),
            Row(
              children: [
                const Text("Invoice Date", style: TextStyle(fontSize: 15)),
                const Spacer(),
                Text(
                  DateFormat('dd-MM-yyyy').format(
                    DateTime.now(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            const Divider(thickness: 2),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text("Due Date", style: TextStyle(fontSize: 15)),
                const Spacer(),
                Text(
                  DateFormat('dd-MM-yyyy').format(
                    DateTime.now(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(thickness: 2),
            const SizedBox(height: 10),
            const Text(
              "Item Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Divider(thickness: 2),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Apple"),
                const Spacer(),
                Text("${Globals.total}"),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "10.0 * 15.5",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 5),
            const Divider(thickness: 2),
            Row(
              children: [
                const Spacer(),
                const Text("Subtotal"),
                const Spacer(),
                Text("${Globals.total}"),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  "Total Amount",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text(
                  "155.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
`