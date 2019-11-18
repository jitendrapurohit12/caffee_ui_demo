import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final double width;

  const TopBar({@required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TopBarPainter(),
      child: Container(
          width: width,
          height: 200,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Select Your Coffee',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 28,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Select for the best',
                              hintStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.deepPurple,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class TopBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset start = Offset(size.width / 2, 0);
    Offset end = Offset(size.width / 2, size.height);
    Paint paint = Paint()
      ..shader =
          LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple])
              .createShader(Rect.fromPoints(start, end));

    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 4, size.height - 20, size.width / 2, size.height - 20)
      ..quadraticBezierTo(
          size.width * 3 / 4, size.height - 20, size.width, size.height - 40)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
