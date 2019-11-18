import 'package:caffee_ui_demo/helper/color.dart';
import 'package:flutter/material.dart';

class HeadingViewAllWidget extends StatelessWidget {
  final String heading;

  const HeadingViewAllWidget({@required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            heading,
            style: TextStyle(
                color: darkBlue, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text('View All', style: TextStyle(color: Colors.grey, fontSize: 16))
        ],
      ),
    );
  }
}
