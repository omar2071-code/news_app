import 'package:flutter/material.dart';

class searchBox extends StatelessWidget {
  const searchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SearchController(),
      autocorrect: true,
      decoration: InputDecoration(
        hintText: 'search news',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Colors.black,
            strokeAlign: 1,
            style: BorderStyle.none,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.yellow, width: 2),
        ),
      ),
      onSubmitted: (value) {},
    );
  }
}
