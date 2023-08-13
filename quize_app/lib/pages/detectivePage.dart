import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import 'gamePage.dart';

class DetectivePage extends StatefulWidget {
  const DetectivePage({super.key});

  @override
  State<DetectivePage> createState() => _DetectivePageState();
}

class _DetectivePageState extends State<DetectivePage> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -90,
            right: -80,
            child: DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Image.asset(
                'assets/images/compass.png',
                height: 250,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 25,
            child: DelayedDisplay(
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 25,
            child: DelayedDisplay(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "How\nmany countries\ndo you know?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "This game has a simple rules",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 165, 187, 24),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Guess which country is the\nchosen map',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 165, 187, 24),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Answer the suggestion questions\nabout this country',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 165, 187, 24),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Earn 25 points for each correct\nanswer!',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const StartGame(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: _height * 0.07,
                              width: _width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xff5869ff),
                              ),
                              child: const Center(
                                  child: Text(
                                'Start the game',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
