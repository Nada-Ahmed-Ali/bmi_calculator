import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  final double res;

  const Output({super.key, required this.res});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Result",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
      ),
      backgroundColor: const Color(0xff1C2135),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 35),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          getResultText(res),
                          style: const TextStyle(
                            color: Color(0xff21BF73),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                       "${res.round()}", // Show BMI result
                        style: const TextStyle(fontSize: 64),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        getDesc1Text(res),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                       Text(
                        getDesc2Text(res),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffE83D67),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to determine BMI category
  String getResultText(double bmi) {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }
  String getDesc1Text(double bmi) {
    if (bmi >= 25) {
      return "You are Overweight,";
    } else if (bmi > 18.5) {
      return "You have a Normal Body Weight,";
    } else {
      return "You are Underweight,";
    }
  }
  String getDesc2Text(double bmi) {
    if (bmi >= 25) {
      return " working on shedding a few pounds could benefit you.";
    } else if (bmi > 18.5) {
      return " great job!";
    } else {
      return " consider gaining some weight for a healthier you!";
    }
  }
 
}
