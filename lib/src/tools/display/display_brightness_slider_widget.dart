import "package:flutter/material.dart";

///
/// Create a BrightnessSliderWidget class with a StatefulWidget extension
///
class BrightnessSliderWidget extends StatefulWidget {
  final bool isDisabled;
  final double? currentBrightness;

  const BrightnessSliderWidget(
    this.isDisabled,
    this.currentBrightness, {
    Key? key,
  }) : super(key: key);

  @override
  State<BrightnessSliderWidget> createState() => _BrightnessSliderState();
}

class _BrightnessSliderState extends State<BrightnessSliderWidget> {
  ///
  /// The method creates a slider to set brightness display
  ///
  @override
  Widget build(BuildContext context) {
    double? currentBrightness = 0.5;

    return Slider(
      value: currentBrightness,
      min: 0,
      max: 1,
      thumbColor: Colors.blue,
      activeColor: Colors.white,
      onChanged: (double? currentBrightness) {
        setState(() {
          if (this.widget.isDisabled) {
            currentBrightness = null;
          } else {
            currentBrightness = currentBrightness;
          }
        });
      },
    );
  }
}
