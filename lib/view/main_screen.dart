import 'package:flutter/material.dart';
import 'package:infoware/view/home_screen/home_screen.dart';
import 'package:infoware/view/market_screen/market_screen.dart';
import 'package:infoware/view/styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> bodies = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const MarketScreen(),
    const HomeScreen()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[_currentIndex],
      bottomNavigationBar:   Container(
        height: 70,
        color: Colors.white ,
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_currentIndex != 0) {
                      setState(() {
                        _currentIndex = 0;
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Icon(
                      _currentIndex == 0 ? Icons.home : Icons.home_outlined,
                      size: 26,
                      color: _currentIndex != 0 ? Colors.black26 : Colors.black,
                    ),
                  ),
                )),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_currentIndex != 1) {
                      setState(() {
                        _currentIndex = 1;
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child:  Icon(
                      Icons.search,
                      size: 26,
                      color:  _currentIndex != 1 ? Colors.black26 : Colors.black,
                    ),
                  ),
                )),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      if (_currentIndex != 2) {
                        setState(() {
                          _currentIndex = 2;
                        });
                      }

                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.sync_alt,color: Colors.white,),
                    )
                )),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_currentIndex != 3) {
                      setState(() {
                        _currentIndex = 3;
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Icon(
                      _currentIndex != 3 ? Icons.settings_input_composite_outlined : Icons.settings_input_component,
                      size: 26,
                      color: _currentIndex != 3 ? Colors.black26 : Colors.black,
                    ),
                  ),
                )),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_currentIndex != 4) {

                      setState(() {
                        _currentIndex = 4;
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Icon(
                      _currentIndex != 4 ? Icons.person_2_outlined : Icons.person,
                      size: 26,
                      color: _currentIndex != 4 ? Colors.black26 : Colors.black,
                    ),
                  ),
                )),
          ],
        ),
      )
        ,
    );
  }
}
