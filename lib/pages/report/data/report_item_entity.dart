class ReportItemEntity {
  final String asset;
  final String title;
  final String subtitle;
  final String date;
  final String money;
  final bool isPositiveIncome;

  String get moneyText => isPositiveIncome ? "+\$$money" : "-\$$money";

  ReportItemEntity({
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.money,
    required this.isPositiveIncome,
  });

  ReportItemEntity.fromJson(Map<String, dynamic> json)
      : asset = json['asset'],
        title = json['title'],
        subtitle = json['subtitle'],
        date = json['date'],
        money = json['money'],
        isPositiveIncome = json['isPositiveIncome'];
}

final testData = [
  {
    "asset": "assets/icon_educacion.png",
    "title": "Education",
    "subtitle": "education",
    "date": "07/May/2021",
    "money": "725.000",
    "isPositiveIncome": false,
  },
  {
    "asset": "assets/icon_compra_digital.png",
    "title": "Compra Digital",
    "subtitle": "Nexfilx",
    "date": "07/May/2021",
    "money": "26.900",
    "isPositiveIncome": false,
  },
  {
    "asset": "assets/icon_mercado.png",
    "title": "Mercado",
    "subtitle": "Jumbo CC Santafe",
    "date": "06/May/2021",
    "money": "230.000",
    "isPositiveIncome": false,
  },
  {
    "asset": "assets/icon_servicios.png",
    "title": "Sevicios",
    "subtitle": "English Enri",
    "date": "05/May/2021",
    "money": "93.500",
    "isPositiveIncome": false,
  },
  {
    "asset": "assets/icon_transferencia.png",
    "title": "Tansferencia",
    "subtitle": "Desde Devivienda",
    "date": "04/May/2021",
    "money": "60.000",
    "isPositiveIncome": true,
  },
  {
    "asset": "assets/icon_transporte.png",
    "title": "Transporte",
    "subtitle": "Combustible Primox",
    "date": "04/May/2021",
    "money": "13.000",
    "isPositiveIncome": false,
  },
  {
    "asset": "assets/icon_compra_digital.png",
    "title": "Compra Digital",
    "subtitle": "Mercado Libre",
    "date": "03/May/2021",
    "money": "72.800",
    "isPositiveIncome": false,
  },
].map((e) => ReportItemEntity.fromJson(e)).toList();
