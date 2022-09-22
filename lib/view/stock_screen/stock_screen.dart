import 'package:flutter/material.dart';
import 'package:infoware/model/data.dart';
import 'package:infoware/view/styles.dart';
import 'package:infoware/view/widgets/button.dart';
import 'package:infoware/view/widgets/image_circle.dart';
import 'package:infoware/view/widgets/primary_color_text.dart';
import 'package:infoware/view/widgets/secondary_color_text.dart';
import 'package:infoware/view/widgets/trade_change.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Stock Details",
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: kPrimaryColor,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 12),
              onPressed: () {},
              icon: const Icon(
                Icons.cloud_upload_outlined,
                color: kPrimaryColor,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ImageCircle(
                      index: index,
                      size: 50,
                    ),
                    const SizedBox(
                      width: kPadding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryColorText(text: Data.stockActivity[index].companyShortName, fontSize: 18),
                        const SizedBox(
                          height: 6,
                        ),
                        SecondaryColorText(text: Data.stockActivity[index].companyFullName, fontSize: 11)
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PrimaryColorText(text: Data.stockActivity[index].map['open'].toString(), fontSize: 18),
                    const SizedBox(
                      height: 6,
                    ),
                    const TradeChangeText(
                      text: "19.43% (+1.75%)",
                      fontSize: 11,
                    )
                  ],
                )
              ],
            ),
            const Slide(),
            Container(
              height: screenHeight * 0.35,
              // width:screenWidth * 0.5,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/images/graphTwo.png"), fit: BoxFit.contain)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(kPadding),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(kPadding)),
                  border: Border.all(color: kBorderColor, width: 1)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Data.stockActivity[index].image,
                            fit: BoxFit.cover,
                            height: 16,
                            width: 16,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const PrimaryColorText(text: "Overview", fontSize: 16),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade400, width: 1)),
                        child: Icon(
                          Icons.question_mark,
                          color: Colors.grey.shade400,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      lowerContainerRow("Open", Data.stockActivity[index].map['open'].toString()),
                      lowerContainerRow("Day low", Data.stockActivity[index].map['dayLow'].toString()),
                      lowerContainerRow("Day High", Data.stockActivity[index].map['dayHigh'].toString()),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: kPadding / 2),
                    child: CardButton(
                        verticalPadding: 18,
                        border: 0,
                        text: "Buy",
                        color: kSecondaryColor,
                        borderColor: Colors.transparent),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: kPadding / 2),
                    child: CardButton(
                        verticalPadding: 18,
                        border: 0,
                        text: "Follow",
                        color: kPrimaryColor,
                        borderColor: Colors.transparent),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget lowerContainerRow(String textOne, String textTwo) {
    return Column(
      children: [
        SecondaryColorText(text: textOne, fontSize: 13),
        const SizedBox(
          height: 8,
        ),
        PrimaryColorText(text: textTwo, fontSize: 16)
      ],
    );
  }
}

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 5; i++)
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  index = i;
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: CardButton(
                  fontSize: 12,
                  horizontalPadding: 8,
                  borderColor: Colors.grey.shade300,
                  color: index == i ? kSecondaryColor : Colors.white,
                  textColor: index == i ? Colors.white : Colors.black45,
                  border: index == i ? 0 : 1,
                  text: string(i),
                ),
              ),
            )),
        ],
      ),
    );
  }

  String string(int i) {
    if (i == 0) {
      return "1D";
    } else if (i == 1) {
      return "1W";
    } else if (i == 2) {
      return "1M";
    } else if (i == 3) {
      return "1Y";
    } else {
      return "ALL";
    }
  }
}
