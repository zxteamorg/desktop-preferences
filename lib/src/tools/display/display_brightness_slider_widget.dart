import "package:flutter/material.dart";

class DisplayBrightnessSlider extends StatefulWidget {
  const DisplayBrightnessSlider({super.key});

  @override
  State<DisplayBrightnessSlider> createState() =>
      _DisplayBrightnessSliderState();
}

class _DisplayBrightnessSliderState extends State<DisplayBrightnessSlider> {
  double _currentBrightness = 50;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentBrightness,
      min: 0,
      max: 100,
      thumbColor: Colors.blue,
      activeColor: Colors.white,
      // divisions: 5,
      onChanged: (double value) {
        setState(() {
          _currentBrightness = value;
        });
      },
    );
  }
}
