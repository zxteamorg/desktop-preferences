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
    return TextButton(
      onPressed: () {
        controller.setBrightness(controller.brightness + 5);
      },
      child: const Text("DisplayPopup"),
    );
  }
}
