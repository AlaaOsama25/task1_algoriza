
import 'package:flutter/material.dart';

class DefaultOutlineButton extends StatelessWidget {

  double? height;
  Function ontap;
  Widget child;
  DefaultOutlineButton({
   this.height =50,
   required this.ontap,
   required this.child
});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: OutlinedButton(
          onPressed: (){
            ontap;
          },
          style: OutlinedButton.styleFrom(
              primary: Color(0xff779AB6),
              side: BorderSide(
                  color: Color(0xff779AB6)
              )
          ),
          child: child
      ),
    );
  }
}
