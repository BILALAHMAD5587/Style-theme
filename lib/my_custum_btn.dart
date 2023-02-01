import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_theme/ui_helper.dart';

class MyCustumButton extends StatelessWidget {
 String bntName;
 Color bgColor;
 Icon? prefix;
 MyCustumButton({this.bgColor=Colors.pink,required this.bntName,
 this.prefix
 });
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 200,
      child: ElevatedButton(onPressed: (){},
          child: prefix !=null ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefix!,
              Text(bntName)
            ],
          ) : Text(bntName),
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          elevation: 12,
          shadowColor: Colors.orange.shade300,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
          ),
          textStyle: myHeadLine21(
              fColor: Colors.white
          )
      ),
      ),
    );
  }
}
