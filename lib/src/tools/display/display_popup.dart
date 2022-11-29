import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "display_controller.dart";

class DisplayPopup extends StatelessWidget {
  const DisplayPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<DisplayController>(
      builder: (
        BuildContext context,
        DisplayController value,
        Widget? child,
      ) =>
          this._buildContent(context, value),
    );
  }

  Widget _buildContent(
      final BuildContext context, final DisplayController controller) {
    //
    // TO DO something with controller
    //
    double? currentSliderValue;
    return Column(children: <Widget>[
      Slider(
        value: currentSliderValue = 0,
        min: 0,
        max: 1,
        thumbColor: Colors.grey,
        activeColor: Colors.grey,
        inactiveColor: Colors.grey,
        // divisions: 5,
        onChanged: (double value) {
          setState(
            () {
              currentSliderValue ??= 0;
            },
          );
        },
      ),
      Slider(
          value: currentSliderValue = 0.15,
          min: 0,
          max: 1,
          thumbColor: Colors.blue,
          activeColor: Colors.white,
          // divisions: 5,
          onChanged: (double value) {
            setState(() {
              currentSliderValue = value;
            });
          }),
      Slider(
          value: currentSliderValue = 0.75,
          min: 0,
          max: 1,
          thumbColor: Colors.blue,
          activeColor: Colors.white,
          // divisions: 5,
          onChanged: (double value) {
            setState(() {
              currentSliderValue = value;
            });
          })
    ]);
  }

  void setState(Null Function() param0) {}
}
