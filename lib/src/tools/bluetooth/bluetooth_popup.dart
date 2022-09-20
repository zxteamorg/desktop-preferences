import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "bluetooth_controller.dart";

class BluetoothPopup extends StatelessWidget {
  const BluetoothPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<BluetoothController>(
      builder: (
        BuildContext context,
        BluetoothController value,
        Widget? child,
      ) =>
          this._buildContent(context, value),
    );
  }

  Widget _buildContent(
      final BuildContext context, final BluetoothController controller) {
    //
    // TO DO something with controller
    //
    return TextButton(
      onPressed: () {
        if (controller.isEnabled) {
          controller.disable();
        } else {
          controller.enable();
        }
      },
      child: const Text("BluetoothPopup"),
    );
  }
}
