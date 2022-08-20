class Globals {
  static String? Name;
  static String? ClientsCompanyName;
  static String? Gst;
  static String? Bill;
  static String? Address;
  static String? Supply;
  static String? Country;
  static String? ClientCity;
  static String? ClientState;
  static String? ClientZip;

  /// YOUR COMPANY DETAILS
  static String? CompanyName;
  static String? GSTNO;
  static String? Date;
  static String? Yourname;
  static String? AddressCompany;
  static String? City;
  static String? State;
  static String? CompanyCountry;
  static String? Zip;

  static List itemsList = [];
  static List itemCostTotal = [];

  static int total = 0;
}

class Item {
  String? itemName;
  String? itemQut;
  String? itemCost;
  String? itemSGST;
  String? itemCGST;

  Item({
    required this.itemName,
    required this.itemQut,
    required this.itemCost,
    required this.itemSGST,
    required this.itemCGST,
  });

  factory Item.fromAdd({
    required String itemName,
    required String itemQut,
    required String itemCost,
    required String itemSGST,
    required String itemCGST,
  }) {
    return Item(
      itemName: itemName,
      itemQut: itemQut,
      itemCost: itemCost,
      itemSGST: itemSGST,
      itemCGST: itemCGST,
    );
  }
}
