import 'package:infoware/model/watchlist.dart';

class StocksActivity extends WatchList{
  final int shares ;

  StocksActivity({
    required super.image,
  required super.map,
  required super.currentValue,
  required super.trade,
  required super.companyShortName,required super.companyFullName,required this.shares,
});
}