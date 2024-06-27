import 'package:assignment0/Screens/Send.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _position = 0.5; // Initial position at center

  void _onDragUpdate(DragUpdateDetails details, BoxConstraints constraints) {
    setState(() {
      double newPosition = _position + details.delta.dx / constraints.maxWidth;
      if (newPosition.isFinite && newPosition >= 0.0 && newPosition <= 1.0) {
        _position = newPosition;
      }
    });
  }

  void _onDragEnd(DragEndDetails details) {
    if (_position < 0.33) {
      _position = 0.0;
      _leftSlideFunction();
    } else if (_position > 0.67) {
      _position = 1.0;
      _rightSlideFunction();
    } else {
      _position = 0.5; // Center pe rahega
    }
    setState(() {});
  }

  void _leftSlideFunction() {
//empty for this case
    _position = 0.5;
  }

  void _rightSlideFunction() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: ((context) => Send())),
    );
    _position = 0.5;
    // print('Slider moved to Send');
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Receive',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Send',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: _position *
                    (constraints.maxWidth -
                        130), // Adjust the position calculation

                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onPanUpdate: (details) => _onDragUpdate(details, constraints),
                  onPanEnd: _onDragEnd,
                  child: Container(
                    width: 80, // Increase the size of the slider button
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.graphic_eq,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
