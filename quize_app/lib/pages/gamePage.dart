import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/pages/HomePage.dart';

class StartGame extends StatefulWidget {
  const StartGame({Key? key}) : super(key: key);

  @override
  State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Image.asset(
                'assets/images/map.png',
                height: 300,
              ),
            ),
            const DelayedDisplay(
                delay: Duration(milliseconds: 250),
                child: Text(
                  'What country is \nshown on the map?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                )),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: DelayedDisplay(
                  delay: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Container(
                      height: 45,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade200),
                      child: const Center(
                        child: Text(
                          'Tanzania',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: DelayedDisplay(
                  delay: const Duration(milliseconds: 750),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Container(
                      height: 45,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffd5f224)),
                      child: const Center(
                        child: Text(
                          'DR Congo',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 1000),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 45,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade200),
                    child: const Center(
                      child: Text(
                        'Angola',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
