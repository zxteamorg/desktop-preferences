// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart"
    show
        Alignment,
        BuildContext,
        Colors,
        Column,
        Container,
        Divider,
        EdgeInsets,
        Icon,
        IconData,
        Icons,
        Key,
        ListView,
        Row,
        Spacer,
        StatelessWidget,
        Text,
        TextDecoration,
        TextStyle,
        Widget;
import "package:provider/provider.dart" show Consumer;

import "wireless_controller.dart" show WirelessController;
import "wireless_service.dart" show WirelessNetwork;

class WirelessPopup extends StatelessWidget {
  const WirelessPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<WirelessController>(
      builder: (
        BuildContext context,
        WirelessController value,
        Widget? child,
      ) =>
          this._buildContent(context, value),
    );
  }

  Widget _buildContent(
    final BuildContext context,
    final WirelessController controller,
  ) {
    return Column(
      children: <Widget>[
        Container(
          // height: 20,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Text("wifi",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.none)),
                ],
              ),
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                Text("wifi_2",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.none)),
              ]),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("wifi_3",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.none)),
                ],
              )
            ],
          ),
        ),
        Divider(),
        Container(
          alignment: Alignment.topLeft,
          height: 20,
          color: Colors.grey,
          child: const Text(
            "Personal Hotspot",
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                decoration: TextDecoration.none),
          ),
        ),
        Divider(),
        Container(
          alignment: Alignment.topLeft,
          height: 20,
          color: Colors.grey,
          child: const Text(
            "Prfferred Network",
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                decoration: TextDecoration.none),
          ),
        ),
        Divider(),
        Container(
          height: 150,
          color: Colors.grey,
          child: this._buildWirelessNetworks(controller),
        ),
        Divider(),
        Container(
          alignment: Alignment.topLeft,
          height: 20,
          color: Colors.grey,
          child: const Text(
            "Network Preferences",
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                decoration: TextDecoration.none),
          ),
        )
      ],
    );
  }

  Widget _buildWirelessNetworks(final WirelessController controller) {
    final List<WirelessNetwork> wirelessNetworks = controller.networks;
    return ListView.builder(
      // padding: const EdgeInsets.all(8),
      itemCount: wirelessNetworks.length,
      // separatorBuilder: (
      //   BuildContext context,
      //   int index,
      // ) =>
      //     const Divider(
      //   height: 20,
      //   color: Color.fromARGB(255, 154, 151, 151),
      //   thickness: 1,
      // ),
      itemBuilder: (BuildContext context, int index) {
        final WirelessNetwork wirelessNetwork = wirelessNetworks[index];

        final IconData icon =
            this.resolveOtherNetworksIcon(wirelessNetwork.level);

        final IconData? iconIsPublic =
            this.resolveNetworksIsPublic(wirelessNetwork.isPublic);

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Icon(icon, size: 36, color: Colors.black),
              Text(wirelessNetwork.name,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.8),
                      decoration: TextDecoration.none)),
              Spacer(),
              Icon(iconIsPublic, size: 26, color: Colors.black),
            ],
          ),
        );
      },
    );
  }

  IconData resolveOtherNetworksIcon(int level) {
    if (level == 0) {
      return Icons.wifi_1_bar_rounded;
    }
    if (level == 1) {
      return Icons.wifi_1_bar;
    }
    if (level == 2) {
      return Icons.wifi_2_bar;
    }
    return Icons.wifi;
  }

  IconData? resolveNetworksIsPublic(bool isPublic) {
    if (isPublic == false) {
      return Icons.lock;
    }
    return null;
  }
}
