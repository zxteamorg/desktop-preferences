import "package:flutter/material.dart";

class BrightnessSliderWidget extends StatefulWidget {
  final bool isDisabled;
  const BrightnessSliderWidget(
    this.isDisabled, {
    Key? key,
  }) : super(key: key);

  @override
  State<BrightnessSliderWidget> createState() => _BrightnessSliderState();
}

class _BrightnessSliderState extends State<BrightnessSliderWidget> {
  @override
  Widget build(BuildContext context) {
    double? currentBrightness = 50;
    return Slider(
      value: currentBrightness,
      min: 0,
      max: 100,
      thumbColor: Colors.blue,
      activeColor: Colors.white,
      onChanged: (double? currentBrightness) {
        if (this.widget.isDisabled) {
          currentBrightness = null;
        } else {
          setState(() {
            currentBrightness = currentBrightness;
          });
        }
      },
    );
  }
}
