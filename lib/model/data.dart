import 'package:infoware/model/stocks_activity.dart';
import 'package:infoware/model/watchlist.dart';

class Data {
  static List watchList = [
    WatchList(
        companyFullName: "Adobe Inc",
        companyShortName: "ADB",
        trade: "5,49%",
        currentValue: "33.49",
        map: {"open": "\$643.58", "dayLow": "\$603.75", "dayHigh": "\$685.21"},
        image: "assets/images/adobe_logo.png"),

    WatchList(
        companyFullName: "Tesla Inc",
        companyShortName: "TSLA",
        trade: "5,49%",
        currentValue: "25.68",
        map: {"open": "\$909.68", "dayLow": "\$902.11", "dayHigh": "\$910.18"},
        image: "assets/images/tesla_logo.png"),

    WatchList(
        companyFullName: "Nvidia Inc",
        companyShortName: "NVDA",
        trade: "0.14%",
        currentValue: "25.94",
        map: {"open": "\$227.26", "dayLow": "\$210.56", "dayHigh": "\$264.63"},
        image: "assets/images/nvidia_logo.png"),

    WatchList(
        companyFullName: "Apple Inc",
        companyShortName: "APPL",
        trade: "1.82%",
        currentValue: "29.88",
        map: {"open": "\$1,114.90", "dayLow": "\$1,049.81", "dayHigh": "\$1,195.63"},
        image: "assets/images/apple_logo.png"),
  ];

  static List<StocksActivity> stockActivity=[
    StocksActivity(
        companyFullName: "Adobe Inc",
        companyShortName: "ADB",
        trade: "5,49%",
        currentValue: "33.49",
        map: {"open": "\$643.58", "dayLow": "\$603.75", "dayHigh": "\$685.21"},
        image: "assets/images/adobe_logo.png",
    shares: 20
    ),

    StocksActivity(
        companyFullName: "Tesla Inc",
        companyShortName: "TSLA",
        trade: "5,49%",
        currentValue: "25.68",
        map: {"open": "\$909.68", "dayLow": "\$902.11", "dayHigh": "\$910.18"},
        image: "assets/images/tesla_logo.png",
        shares: 32
    ),

    StocksActivity(
        companyFullName: "Nvidia Inc",
        companyShortName: "NVDA",
        trade: "0.14%",
        currentValue: "25.94",
        map: {"open": "\$227.26", "dayLow": "\$210.56", "dayHigh": "\$264.63"},
        image: "assets/images/nvidia_logo.png",
        shares: 10
    ),

    StocksActivity(
        companyFullName: "Apple Inc",
        companyShortName: "APPL",
        trade: "1.82%",
        currentValue: "29.88",
        map: {"open": "\$1,114.90", "dayLow": "\$1,049.81", "dayHigh": "\$1,195.63"},
        image: "assets/images/apple_logo.png",
        shares: 27
    ),
  ];
}
