import 'package:flutter/material.dart';
import 'package:task1_algoriza/Component/default-font.dart';

class DefaultDivider extends StatelessWidget {

  String? title;
  DefaultDivider({
   required this.title
});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container(
            margin: const EdgeInsets.only( right: 20.0),
            child: Divider(
              color: Colors.grey,
              height: 36,
            ))),
        DefaultTextFont(
            title: title!,
          size: 12,
          titlecolor: Colors.grey,
        ),
        Expanded(child: Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: Divider(
              color: Colors.grey,
              height: 36,
            )))
      ],
    );
  }
}
