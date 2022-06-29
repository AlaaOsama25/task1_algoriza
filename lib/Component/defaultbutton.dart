import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  String title;
  Color buttoncolor;
  Color textcolor;
  double circularRadius;
  double height;
  double width;
  FontWeight fontweight;
  VoidCallback ontap;


  DefaultButton({
     required this.title,
      required this.ontap,
      this.buttoncolor = const Color(0xff779AB6),
      this.textcolor = Colors.white,
      this.circularRadius = 10.0,
      this.width = double.infinity,
      this.height = 52,
      this.fontweight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: ontap,
        child: Text(
            title,
            style: GoogleFonts.mulish(
              textStyle: TextStyle(
                fontWeight: fontweight,
                color: textcolor,
              ),
            )
        ),
        style: ElevatedButton.styleFrom(
            primary: buttoncolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circularRadius)
            )
        ),
      ),
    );
  }
}
