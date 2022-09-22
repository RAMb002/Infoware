import 'package:flutter/material.dart';
import 'package:infoware/view/styles.dart';
import 'package:infoware/view/widgets/heading_text.dart';
import 'package:infoware/view/widgets/market_movers.dart';
import 'package:infoware/view/widgets/primary_color_text.dart';
import 'package:infoware/view/widgets/secondary_color_text.dart';
import 'package:infoware/view/widgets/trade_change.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Markets",
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: kPrimaryColor,
            size: 20,
          ),
          onPressed: () {

          },
          splashRadius: 20,
        ),
        actions: [
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
          const SizedBox(height: kPadding,),
          SizedBox(
            height: screenWidth * 0.45,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
                itemBuilder: (context,index){
              return Row(
                children: [
                   SizedBox(width:index==0 ?  kPadding : 0),
                  Stack(
                    children: [
                      Container(
                        height: screenWidth * 0.45,
                        width: screenWidth * 0.55,
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                          color : index % 2==0 ? Colors.transparent : kPrimaryColor,
                          border: Border.all(color: kBorderColor,width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(kPadding)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const SecondaryColorText(text: "Dow Jones", fontSize: 14),
                            const SizedBox(height: 5,),
                            PrimaryColorText(text: "\$35,819.56", fontSize: 16,textColor: index%2==0 ? kPrimaryColor : Colors.white,),
                            const SizedBox(height: 3,),
                            const TradeChangeText(text: "0.25%"),

                          ],
                        ),
                      ),
                      Positioned(
                          bottom : 20,
                          left : 0,
                          right: 0,
                          child:  Image.asset('assets/images/graph.png',height: screenWidth * 0.2,width: screenWidth*0.45,color:index % 2==0 ? kPrimaryColor : Colors.white60,fit: BoxFit.cover,))
                    ],
                  ),
                  const SizedBox(width: kPadding ),

                ],
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding,vertical: 30),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle:const TextStyle(
                      color: Colors.black38
                    ),
                    prefixIcon:const Icon(Icons.search,color: kPrimaryColor,),
                    suffixIcon:const Icon(Icons.multiple_stop,color: kPrimaryColor,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:const BorderRadius.all(Radius.circular(kPadding)),
                      borderSide: BorderSide(
                        color: kBorderColor,width: 1
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:const BorderRadius.all(Radius.circular(kPadding)),
                        borderSide: BorderSide(
                            color: kBorderColor,width: 1
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const HeadingText(heading: "Market Movers", seeVisibility: false),
                const SizedBox(height: kPadding,),
                const MarketMovers()
              ],
            ),
          )
        ],
      ),
    );
  }
}
