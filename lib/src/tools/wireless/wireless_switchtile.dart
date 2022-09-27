import 'package:flutter/material.dart';

//           child: WirelessSwitchTile(),

class WirelessSwitchTile extends StatefulWidget {
  const WirelessSwitchTile({super.key});

  @override
  State<WirelessSwitchTile> createState() => _WirelessSwitchTileState();
}

class _WirelessSwitchTileState extends State<WirelessSwitchTile> {
  bool _wireless = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        value: _wireless,
        onChanged: (bool value) {
          setState(() {
            _wireless = value;
          });
        },
        title: const Text("Wi-fi"),
        secondary: const Icon(Icons.wifi, size: 36, color: Colors.black));
  }
}
