import 'package:bmi_calculator/screens/output.dart';
import 'package:bmi_calculator/widgets/feture.dart';
import 'package:bmi_calculator/widgets/gender.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  double currentvalue = 5;
  int age = 20;
  int weight = 60;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
      ),
      backgroundColor: const Color(0xff1C2135),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Gender(
                      gender: 'Male',
                      imagepath: 'assets/image/male.png',
                      col: isMale ? Colors.black12 : const Color(0xff24263B),
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Gender(
                      gender: 'Female',
                      imagepath: 'assets/image/female.png',
                      col: isMale ? const Color(0xff333244) : Colors.black12,
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff333244),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${currentvalue.round()}",
                          style: const TextStyle(fontSize: 40),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    Slider(
                      min: 5.0,
                      max: 200.0,
                      activeColor: const Color(0xffE83D67),
                      inactiveColor: Colors.white,
                      value: currentvalue,
                      onChanged: (value) {
                        setState(() {
                          currentvalue = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Row(children: [
                  Feture(
                    fet: "Weight",
                    count: weight,
                    coll: const Color(0xff24263B),
                    onPlus: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onMin: () {
                      setState(() {
                        if (weight > 5) {
                          weight--;
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Feture(
                    fet: "Age",
                    count: age,
                    coll: const Color(0xff333244),
                    onPlus: () {
                      setState(() {
                        age++;
                      });
                    },
                    onMin: () {
                      setState(() {
                        if (age > 1) {
                          age--;
                        }
                      });
                    },
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffE83D67),
              ),
              child: TextButton(
                onPressed: () {
                  double bmi =
                      weight / ((currentvalue / 100) * (currentvalue / 100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Output(res: bmi),

                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 32, color: Colors.white),
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
