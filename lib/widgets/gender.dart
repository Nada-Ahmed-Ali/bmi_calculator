import 'package:flutter/cupertino.dart';

class Gender extends StatelessWidget {
  const Gender({super.key, required this.gender, required this.imagepath, required this.col, required this.onTap,});
final String gender;
final String imagepath;
final Color col;

final Function () onTap;
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap ,
        child: Container(
          decoration: BoxDecoration(
            color: col,
            borderRadius: BorderRadius.circular(12),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagepath),
                height: 96,
                width: 96,
              ),
              const SizedBox(height: 10,),
              Text(
                gender,
                style:
                const TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
