import 'package:flutter/material.dart';

void NavigatorPush(BuildContext context, Widget) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget));
}
