import 'package:flutter/material.dart';

class PlayingPage extends StatefulWidget {
  const PlayingPage({Key? key}) : super(key: key);

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  bool _isButtonPressed = false;
  Color lineColor = Colors.grey.shade300;
  Color circleColor = Colors.blue;

  @override
  void didUpdateWidget(covariant PlayingPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 24.0,
                  height: 24.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _isButtonPressed ? Colors.green : Colors.grey.shade300,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: _screenWidth * 0.2,
                  height: _screenHeight * 0.009,
                  decoration: BoxDecoration(
                    color: lineColor,
                  ),
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: _screenWidth * 0.2,
                  height: _screenHeight * 0.009,
                  decoration: BoxDecoration(
                    color: lineColor,
                  ),
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: _screenWidth * 0.2,
                  height: _screenHeight * 0.009,
                  decoration: BoxDecoration(
                    color: lineColor,
                  ),
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor,
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  lineColor = Colors.green;
                  circleColor = Colors.red;
                });
              },
              child: Text(
                'Go Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
