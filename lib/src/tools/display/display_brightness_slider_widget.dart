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
  double? currentBrightness;

  ///
  /// The method creates a slider to set brightness display
  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Slider(
          value: currentBrightness = 0,
          // min: 0,
          // max: 1,
          thumbColor: Colors.grey,
          activeColor: Colors.grey,
          inactiveColor: Colors.grey,
          onChanged: (double? value) {
            if (this.widget.isDisabled) {
              setState(
                () {
                  currentBrightness = null;
                },
              );
            }
          },
        ),
        Slider(
          value: currentBrightness = 0.5,
          min: 0,
          max: 1,
          thumbColor: Colors.blue,
          activeColor: Colors.white,
          onChanged: (double? value) {
            if (currentBrightness != null) {
              setState(
                () {
                  currentBrightness = value;
                },
              );
            }
          },
        ),
      ],
    );
  }
}
