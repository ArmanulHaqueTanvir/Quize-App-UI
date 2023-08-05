import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/components/card.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: DelayedDisplay(
            delay: const Duration(milliseconds: 100),
            child: Image.asset("assets/images/profile.png"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
            child: DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Image.asset("assets/images/search.png"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DelayedDisplay(
              delay: Duration(milliseconds: 350),
              child: Text(
                'Hello, Tanvir',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const DelayedDisplay(
              delay: Duration(milliseconds: 350),
              child: Text(
                'Have a fun game',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 350),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: SquarePercentIndicator(
                            width: 60,
                            height: 60,
                            startAngle: StartAngle.topRight,
                            reverse: false,
                            borderRadius: 20,
                            shadowWidth: 5,
                            progressWidth: 7,
                            shadowColor:
                                const Color(0xff5869ff).withOpacity(0.3),
                            progressColor: const Color(0xff5869ff),
                            progress: 0.85,
                          ),
                        ),
                        const SizedBox(width: 25),
                        const DelayedDisplay(
                          delay: Duration(milliseconds: 1000),
                          child: Column(
                            children: [
                              Text(
                                'Want to explore \nevery country?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'You know 172 countries',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const DelayedDisplay(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Games",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1350),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyCard(
                        level: 'LV,3',
                        imagePath: 'assets/images/camera.png',
                        title: 'Photographer',
                        descreiption: 'Know the country?',
                        color: Colors.cyan.shade300,
                        width: 50,
                      ),
                      const MyCard(
                        level: 'LV.6',
                        imagePath: 'assets/images/compass.png',
                        title: 'Detective',
                        descreiption: 'Find the country?',
                        color: Colors.greenAccent,
                        width: 90,
                      ),
                      MyCard(
                        level: 'LV,3',
                        imagePath: 'assets/images/camera.png',
                        title: 'Photographer',
                        descreiption: 'Know the country?',
                        color: Colors.cyan.shade300,
                        width: 50,
                      ),
                      MyCard(
                        level: 'LV,3',
                        imagePath: 'assets/images/camera.png',
                        title: 'Photographer',
                        descreiption: 'Know the country?',
                        color: Colors.cyan.shade300,
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
