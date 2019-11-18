import 'package:caffee_ui_demo/helper/color.dart';
import 'package:caffee_ui_demo/model/coffee_model.dart';
import 'package:flutter/material.dart';

class NormalCoffeeTile extends StatelessWidget {
  final CoffeeModel model;
  final double width;

  const NormalCoffeeTile({@required this.model, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, top: 8, right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 80,
                  width: width - 90,
                  child: CustomPaint(
                    painter: NormalCoffeeTileDetailPainter(),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                width: 8,
                              ),
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    model.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(color: darkBlue),
                                    children: [
                                      TextSpan(
                                          text: model.name + '\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                      TextSpan(
                                          text: model.type,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300))
                                    ]),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.alarm, color: Colors.deepPurple),
                                SizedBox(height: 4),
                                Text('${model.timeToBrew} mins',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.deepPurple))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 80,
                  width: 80,
                  child: CustomPaint(
                    child: Container(
                        child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          '\$${model.price}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
                    painter: NormalCoffeeTilePricePainter(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NormalCoffeeTileDetailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..lineTo(size.width, 0)
      ..quadraticBezierTo(
          size.width - 10, size.height / 4, size.width - 10, size.height / 2)
      ..quadraticBezierTo(
          size.width - 10, size.height * 3 / 4, size.width - 20, size.height)
      ..lineTo(0, size.height)
      ..close();

    Paint paint = Paint()..color = Colors.white;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class NormalCoffeeTilePricePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..lineTo(20, 0)
      ..quadraticBezierTo(10, size.height / 4, 10, size.height / 2)
      ..quadraticBezierTo(10, size.height * 3 / 4, 0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    Paint paint = Paint()..color = Colors.deepPurple;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
