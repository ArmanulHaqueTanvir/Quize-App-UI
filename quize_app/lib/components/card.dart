import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String level, imagePath, title, descreiption;
  final Color color;
  final int width;
  const MyCard(
      {super.key,
      required this.level,
      required this.imagePath,
      required this.title,
      required this.descreiption,
      required this.color,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 200,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyan.shade100.withOpacity(0.4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                level,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Image.asset(
                imagePath,
                height: 80,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                descreiption,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 7),
              Container(
                height: 10,
                width: 165,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 10,
                      width: width.toDouble(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan.shade400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
