import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {

  Widget? prefixIcon;
  Widget? SuffixIcon;
  TextInputType? keyType;
  Color? cursor;
  String? title;
  bool? isPassword;
  double paddingHorizontal;
  double paddingVertical;
  DefaultFormField({
   this.prefixIcon =null,
    this.SuffixIcon=null,
    this.isPassword =false,
    required this.keyType,
    this.cursor =const Color(0xff779AB6),
    required this.title,
    this.paddingHorizontal=0,
    this.paddingVertical=0
});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword!,
        keyboardType: keyType,
        cursorColor: cursor,
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          contentPadding:  EdgeInsets.symmetric(vertical: paddingVertical,horizontal: paddingHorizontal),
          hintText: title,
          prefixIcon: prefixIcon,
          suffixIcon: (SuffixIcon==null)?null:IconTheme(data: IconThemeData(
              color: Color(0xff779AB6)
          ),
              child: SuffixIcon!),
          suffixIconColor: Color(0xff779AB6),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff779AB6),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,

            ),
          ),
        )
    );
  }
}
