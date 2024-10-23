import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animationController.addListener(() {
      setState(() {
        _progressValue = _animationController.value;
      });
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories Animation'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 5),
              width: MediaQuery.of(context).size.width,
              height: 4.0,
              color: Colors.grey[300],
            ),
            AnimatedContainer(
              duration: Duration(seconds: 5),
              width: MediaQuery.of(context).size.width * _progressValue,
              height: 4.0,
              color: Colors.blue,
            ),
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  if (_animationController.isAnimating) {
                    _animationController.stop();
                  } else {
                    _animationController.forward(from: _progressValue);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
