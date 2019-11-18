import 'package:caffee_ui_demo/common/heading_view_all_widget.dart';
import 'package:caffee_ui_demo/common/normal_coffee_tile.dart';
import 'package:caffee_ui_demo/model/coffee_model.dart';
import 'package:caffee_ui_demo/page/secondary_page.dart';

import '../common/top_bar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(
              width: width,
            ),
            SizedBox(height: 16),
            HeadingViewAllWidget(
              heading: 'Our Specials',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ourSpecialCoffies.map((coffee) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondaryPage(
                                  model: coffee,
                                  category: 'Our Special',
                                ))),
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Image.asset(
                            coffee.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            HeadingViewAllWidget(
              heading: 'Most Popular',
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: normalCoffee.map((coffee) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondaryPage(
                                model: coffee,
                                category: 'Most Popular',
                              ))),
                  child: NormalCoffeeTile(
                    model: coffee,
                    width: width,
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
