import 'package:bmi_calculator/widgets/counteree.dart';

import 'package:flutter/material.dart';

class Feture extends StatelessWidget {
  const Feture({super.key, required this.fet, required this.count, required this.coll, required this.onPlus, required this.onMin});
final String fet;
final int count;
final Color coll;
final Function() onPlus;
final Function() onMin;
  @override
  Widget build(BuildContext context) {
    return    Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: coll,
            borderRadius: BorderRadius.circular(12)),
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                fet,
                style: const TextStyle(
                    color: Color(0xff8B8C9E), fontSize: 20),
              ),
              Text(
                "$count",
                style: const TextStyle(fontSize: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Counteree(icon: Icons.remove, onPlus: onMin,),
                  const SizedBox(
                    width: 30,
                  ),
                   Counteree(icon: Icons.add, onPlus: onPlus,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
