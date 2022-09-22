class WatchList {
  final String companyShortName;
  final String companyFullName;
  final String trade;
  final String currentValue;
  final Map<String,String> map;
  final String image;

  WatchList({
    required this.companyFullName,
    required this.companyShortName,
    required this.trade,
    required this.currentValue,
    required this.map,
    required this.image
});
}