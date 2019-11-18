import 'package:caffee_ui_demo/helper/color.dart';
import 'package:caffee_ui_demo/model/coffee_model.dart';
import 'package:flutter/material.dart';

class SecondaryPage extends StatelessWidget {
  final CoffeeModel model;
  final String category;

  const SecondaryPage({@required this.model, @required this.category});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            model.image,
            height: height * 0.6,
            width: width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(36)),
                  color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: darkBlue),
                          children: [
                            TextSpan(
                                text: '$category: ${model.name}\n\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            TextSpan(text: model.description)
                          ]),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 24),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.alarm,
                            color: darkBlue,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text('${model.timeToBrew} mins',
                              style: TextStyle(fontSize: 16, color: darkBlue))
                        ],
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 30),
                              Text('Add To Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18)),
                              SizedBox(
                                width: 56,
                              ),
                              Text('\$${model.price}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18)),
                              SizedBox(
                                width: 24,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
