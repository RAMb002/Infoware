import 'package:flutter/material.dart';
import 'package:infoware/model/data.dart';
import 'package:infoware/view/stock_screen/stock_screen.dart';
import 'package:infoware/view/styles.dart';
import 'package:infoware/view/widgets/image_circle.dart';
import 'package:infoware/view/widgets/page_animation.dart';
import 'package:infoware/view/widgets/primary_color_text.dart';
import 'package:infoware/view/widgets/secondary_color_text.dart';
import 'package:infoware/view/widgets/trade_change.dart';

class MarketMovers extends StatelessWidget {
  const MarketMovers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Data.stockActivity.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(CustomPageRoute(StockScreen(index: index)));
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(kPadding),
                  decoration: BoxDecoration(
                    border: Border.all(color: kBorderColor),
                    borderRadius: const BorderRadius.all(Radius.circular(kPadding)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageCircle(
                            index: index,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.max,
                            children: [
                              PrimaryColorText(
                                  text: Data.stockActivity[index].companyShortName, fontSize: 15),
                              const SizedBox(
                                height: kStockActivityGapHeight,
                              ),
                              SecondaryColorText(
                                  text: Data.stockActivity[index].companyFullName, fontSize: 13)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Data.stockActivity[index].currentValue,
                            style: TextStyle(
                                color: index == Data.stockActivity.length - 1 ? Colors.red : kSecondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: kStockActivityGapHeight,
                          ),
                          TradeChangeText(
                            text: Data.stockActivity[index].trade,
                            redColor: index == Data.stockActivity.length - 1 ? Colors.red : kSecondaryColor,
                            fontSize: 12,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          PrimaryColorText(
                              text: Data.stockActivity[index].map['open'].toString(), fontSize: 15),
                          const SizedBox(
                            height: kStockActivityGapHeight,
                          ),
                          SecondaryColorText(
                              text: "${Data.stockActivity[index].shares.toString()} shares", fontSize: 13)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: kPadding - 5,
                )
              ],
            ),
          );
        });
  }
}
