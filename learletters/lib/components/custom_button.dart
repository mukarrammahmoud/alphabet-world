import 'package:flutter/material.dart';
import '../color.dart';
import '../components/custom_text.dart';

Widget customButton(BuildContext ctx, WidgetBuilder navigateTo,
    {Color btnColor = lightBlueColor, String title = "التالي"}) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: btnColor,
    height: 68.38,
    minWidth: 166.4,
    onPressed: () {
      Navigator.of(ctx).push(MaterialPageRoute(
        builder: navigateTo,
      ));
    },
    child: customText(title),
  );
}
