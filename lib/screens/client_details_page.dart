import 'package:flutter/material.dart';

import '../Global.dart';

class Client_details extends StatefulWidget {
  const Client_details({Key? key}) : super(key: key);

  @override
  State<Client_details> createState() => _Client_detailsState();
}

class _Client_detailsState extends State<Client_details> {
  final GlobalKey<FormState> clientDetailsKey = GlobalKey<FormState>();

  final TextEditingController clientController = TextEditingController();
  final TextEditingController GstController = TextEditingController();
  final TextEditingController BillController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();
  final TextEditingController PlaceController = TextEditingController();
  final TextEditingController CountryController = TextEditingController();
  final TextEditingController ClientCityController = TextEditingController();
  final TextEditingController ClientStateController = TextEditingController();
  final TextEditingController ClientZipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Client Details"),
        centerTitle: true,
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                if (clientDetailsKey.currentState!.validate()) {
                  clientDetailsKey.currentState!.save();

                  setState(() {
                    Navigator.of(context).pushNamed('second_page');
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
        // color: Colors.blue,
        height: 670,

        color: Colors.grey.shade200,
        width: 600,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        child: Form(
          key: clientDetailsKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Client's Company Name"),
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Client Company Name";
                  }
                  return null;
                },
                onSaved: (val) {
                  setState(() {
                    Globals.ClientsCompanyName = val;
                  });
                },
                controller: clientController,
              ),
              const SizedBox(height: 20),
              const Text("GSTIN"),
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onSaved: (val) {
                  setState(() {
                    Globals.Gst = val;
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Gst number first...";
                  }
                },
                controller: GstController,
              ),
              const SizedBox(height: 20),
              const Text("Bill To "),
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onSaved: (val) {
                  setState(() {
                    Globals.Bill = val;
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Bill- To first...";
                  }
                },
                controller: BillController,
              ),
              const SizedBox(height: 20),
              const Text("Address"),
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Company Address",
                  label: Text("Address"),
                ),
                onSaved: (val) {
                  setState(() {
                    Globals.Address = val;
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Address first...";
                  }
                },
                controller: AddressController,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "City",
                        label: Text("City"),
                      ),
                      onSaved: (val) {
                        setState(() {
                          Globals.ClientCity = val;
                        });
                      },
                      controller: ClientCityController,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Gujarat",
                        label: Text("State"),
                      ),
                      onSaved: (val) {
                        setState(() {
                          Globals.ClientState = val;
                        });
                      },
                      controller: ClientStateController,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Country",
                        label: Text("Country"),
                      ),
                      onSaved: (val) {
                        setState(() {
                          Globals.Country = val;
                        });
                      },
                      // validator: (){},
                      controller: CountryController,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Zip",
                        label: Text("Zip"),
                      ),
                      onSaved: (val) {
                        setState(() {
                          Globals.ClientZip = val;
                        });
                      },
                      controller: ClientZipController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Text(
                "Place of Supply",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Which State you have supply? Plz enter ",
                ),
                onSaved: (val) {
                  setState(() {
                    Globals.Supply = val;
                  });
                },
                controller: PlaceController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
