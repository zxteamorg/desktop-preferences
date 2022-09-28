import "package:flutter/material.dart";

class WirelessSwitchTile extends StatefulWidget {
  const WirelessSwitchTile({super.key});

  @override
  State<WirelessSwitchTile> createState() => _WirelessSwitchTileState();
}

class _WirelessSwitchTileState extends State<WirelessSwitchTile> {
  bool _wireless = false;

  @override
  Widget build(BuildContext context) {
    return Ink(
        color: Colors.grey,
        child: SwitchListTile(
          value: _wireless,
          onChanged: (bool value) {
            setState(() {
              _wireless = value;
            });
          },
          title: const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
        ));
  }
}
