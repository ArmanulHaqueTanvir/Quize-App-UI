import 'package:flutter/material.dart';
import 'package:quize_app/pages/detectivePage.dart';

import 'pages/HomePage.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({super.key});

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int index = 1;
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget currentScreen = const DetectivePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: const Color(0xff675492),
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      currentScreen = const HomePage();
                    });
                  },
                  child: Image.asset(
                    'assets/images/game.png',
                    height: 32,
                    color: index == 0 ? const Color(0xff5869ff) : Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                      currentScreen = const HomePage();
                    });
                  },
                  child: Image.asset(
                    'assets/images/compas.png',
                    height: 32,
                    color: index == 1 ? const Color(0xff5869ff) : Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                      currentScreen = const HomePage();
                    });
                  },
                  child: Image.asset(
                    'assets/images/mail.png',
                    height: 32,
                    color: index == 2 ? const Color(0xff5869ff) : Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      index = 3;
                      currentScreen = const HomePage();
                    });
                  },
                  child: Image.asset(
                    'assets/images/user.png',
                    height: 32,
                    color: index == 3 ? const Color(0xff5869ff) : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
