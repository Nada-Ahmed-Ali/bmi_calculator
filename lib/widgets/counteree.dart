import 'package:flutter/material.dart';

class Counteree extends StatelessWidget {
  const Counteree({super.key, required this.icon, required this.onPlus});
final IconData icon;
final Function() onPlus;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          color: const Color(0xff8B8C9E),
          boxShadow: [BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
            spreadRadius:5 ,
            blurRadius: 4,
            offset: const Offset(3, 3),
          )],
          borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        onPressed:  onPlus,
        icon:  Icon(icon,color: Colors.white,size: 32,),
      ),
    );
  }
}
