class WalletModel {
  String date;
  int totalMoney;
  List<Map<String, dynamic>> info;

  WalletModel({
    required this.date,
    required this.totalMoney,
    required this.info,
  });
}

var incomeList = [
  WalletModel(
    date: "1 Apr 2022",
    totalMoney: 4000000,
    info: [
      {"Info": "Transfer Bulanan", "Money": 2000000},
      {"Info": "Arisan", "Money": 500000},
      {"Info": "Payroll Magang", "Money": 1500000},
    ],
  ),
];

var expenditureList = [
  WalletModel(
    date: "20 Apr 2022",
    totalMoney: 150000,
    info: [
      {"Info": "Top up Dana", "Money": 100000},
      {"Info": "Makan Siang", "Money": 40000},
      {"Info": "Beli Thagen", "Money": 10000},
    ],
  ),
  WalletModel(
    date: "19 Apr 2022",
    totalMoney: 450000,
    info: [
      {"Info": "GoFood KFC", "Money": 200000},
      {"Info": "Uang DAP", "Money": 150000},
      {"Info": "Bayar Utang", "Money": 100000},
    ],
  )
];
