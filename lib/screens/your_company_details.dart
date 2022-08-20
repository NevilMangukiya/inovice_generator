import 'package:flutter/material.dart';

import '../Global.dart';

class Your_Company_Details extends StatefulWidget {
  const Your_Company_Details({Key? key}) : super(key: key);

  @override
  State<Your_Company_Details> createState() => _Your_Company_DetailsState();
}

class _Your_Company_DetailsState extends State<Your_Company_Details> {
  final GlobalKey<FormState> yourCompanyDetails = GlobalKey();

  final TextEditingController companyName = TextEditingController();
  final TextEditingController GstNo = TextEditingController();
  final TextEditingController details = TextEditingController();
  final TextEditingController Date = TextEditingController();
  final TextEditingController YourName = TextEditingController();
  final TextEditingController AddressCompany = TextEditingController();
  final TextEditingController CityController = TextEditingController();
  final TextEditingController StateController = TextEditingController();
  final TextEditingController CountryController = TextEditingController();
  final TextEditingController ZipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Company Details"),
        centerTitle: true,
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('second_page');
                });
                if (yourCompanyDetails.currentState!.validate()) {
                  yourCompanyDetails.currentState!.save();
                }
              },
              child: const Text("SAVE"),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: yourCompanyDetails,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            height: 670,
            width: 600,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Company Name"),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: companyName,
                  onSaved: (val) {
                    Globals.CompanyName = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Company";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // GSTIN
                const Text("GSTIN"),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: GstNo,
                  onSaved: (val) {
                    Globals.GSTNO = val;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Gstin";
                    }
                    return null;
                  },
                ),

                // DATE
                const SizedBox(height: 20),
                const Text("Date"),
                const SizedBox(height: 5),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: Date,
                  onSaved: (val) {
                    Globals.Date = val;
                  },
                ),

                // YOUR NAME
                const SizedBox(height: 20),
                const Text("Your Name"),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (val) {
                    setState(() {
                      Globals.Yourname = val;
                    });
                  },
                  controller: YourName,
                ),

                // ADDRESS
                const SizedBox(height: 20),
                const Text("Address"),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Company Address",
                    label: Text("Address"),
                  ),
                  onSaved: (val) {
                    setState(() {
                      Globals.AddressCompany = val;
                    });
                  },
                  controller: AddressCompany,
                ),

                // CIty
                const SizedBox(height: 20),
                const Text(
                  "City",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: "City",
                        ),
                        onSaved: (val) {
                          setState(() {
                            Globals.City = val;
                          });
                        },
                        controller: CityController,
                      ),
                    ),
                    const SizedBox(width: 20),

                    // GUJARAT
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Gujarat",
                        ),
                        onSaved: (val) {
                          setState(() {
                            Globals.State = val;
                          });
                        },
                        controller: StateController,
                      ),
                    ),
                  ],
                ),

                // COuntry
                const SizedBox(height: 20),
                const Text(
                  "Country",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Country",
                        ),
                        controller: CountryController,
                        onSaved: (val) {
                          setState(() {
                            Globals.CompanyCountry = val;
                          });
                        },
                      ),
                    ),

                    // ZIP
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: "Zip",
                          // label: Text("Zip"),
                        ),
                        controller: ZipController,
                        onSaved: (val) {
                          setState(() {
                            Globals.Zip = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
