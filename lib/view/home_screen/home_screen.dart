import 'package:flutter/material.dart';
import 'package:infoware/model/data.dart';
import 'package:infoware/view/stock_screen/stock_screen.dart';
import 'package:infoware/view/styles.dart';
import 'package:infoware/view/widgets/button.dart';
import 'package:infoware/view/widgets/heading_text.dart';
import 'package:infoware/view/widgets/image_circle.dart';
import 'package:infoware/view/widgets/market_movers.dart';
import 'package:infoware/view/widgets/page_animation.dart';
import 'package:infoware/view/widgets/primary_color_text.dart';
import 'package:infoware/view/widgets/secondary_color_text.dart';
import 'package:infoware/view/widgets/trade_change.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Icon(
              Icons.sports_baseball,
              color: kSecondaryColor,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Alex Julia",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // leading:
        actions: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: kPrimaryColor,
                size: 28,
              )),
          Stack(
            children: [
              IconButton(
                  padding: const EdgeInsets.only(right: 10,top: 8),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: kPrimaryColor,
                    size: 28,
                  )),
              Positioned(
                top: screenWidth * 0.05,
                  right: screenWidth * 0.046,
                  child: Container(
                height: 8,
                width: 8,
                decoration:const  BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              ))
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Stack(
              children: [
                SizedBox(
                  height: screenWidth * 0.5,
                  width: screenWidth,
                  // color: Colors.blue,
                ),
                Positioned(
                  bottom: 0,
                  left: kPadding,
                  right: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Transform.rotate(
                      angle: 0.06,
                      child: Container(
                        height: screenWidth * 0.2,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                            color: kSecondaryColor, borderRadius: BorderRadius.all(Radius.circular(40))),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: kPadding,
                    right: kPadding,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      height: screenWidth * 0.45,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                          color: kPrimaryColor, borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Portfolio value",
                                style: TextStyle(color: Colors.white60),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "\$15,136.32",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "2.11%",
                                        style: TextStyle(
                                            color: kSecondaryColor, textBaseline: TextBaseline.ideographic),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: kSecondaryColor,
                                        size: 15,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              CardButton(
                                border: 0,
                                text: "Deposit",
                                borderColor: Colors.white38,
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CardButton(
                                border: 0.5,
                                text: "Withdraw",
                                color: Colors.transparent,
                                borderColor: Colors.white38,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 20,
                    right: 40,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(kPadding))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          ImageCircle(index: 0),
                          SizedBox(
                            height: 5,
                          ),
                          ImageCircle(index: 1),
                          SizedBox(
                            height: 5,
                          ),
                          ImageCircle(index: 2),
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black38,
                            size: 35,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(kPadding),
                child: HeadingText(heading: "Watchlist", seeVisibility: true),
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: Data.watchList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          const SizedBox(
                            width: kPadding,
                          ),
                          Stack(
                            children: [
                              GestureDetector(
                                onTap : (){
                                  Navigator.of(context).push(CustomPageRoute(StockScreen(index: index)));

                                },
                                child: Container(
                                  padding: const EdgeInsets.all(kPadding),
                                  width: screenWidth * 0.6,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(kPadding),
                                      ),
                                      border: Border.all(color: kBorderColor, width: 1)),
                                  child: Column(
                                    children: [
                                      Row(
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
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  PrimaryColorText(
                                                    text: Data.watchList[index].companyShortName,
                                                    fontSize: 14,
                                                  ),
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  SecondaryColorText(
                                                    text: Data.watchList[index].companyFullName,
                                                    fontSize: 12,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          TradeChangeText(
                                            text: Data.watchList[index].trade,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              PrimaryColorText(
                                                  text: Data.watchList[index].currentValue, fontSize: 23),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SecondaryColorText(
                                                  text: Data.watchList[index].map['open'], fontSize: 14)
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 20,
                                  right: 20,
                                  child: IgnorePointer(
                                    child: Image.asset(
                                      'assets/images/graph.png',
                                      height: 80,
                                      width: screenWidth * 0.3,
                                      color: kPrimaryColor,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              children: const [
                HeadingText(heading: "Stocks Activity", seeVisibility: false),
                SizedBox(
                  height: kPadding,
                ),
                MarketMovers()
              ],
            ),
          )
        ],
      ),
    );
  }
}

