import "package:flutter/material.dart"
    show
        BuildContext,
        Color,
        Colors,
        Container,
        Divider,
        EdgeInsets,
        Icon,
        IconData,
        Icons,
        Key,
        ListView,
        Row,
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
    // const Icon(Icons.wifi, size: 36, color: Colors.black);
    final List<WirelessNetwork> wirelessNetworks = controller.networks;
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: wirelessNetworks.length,
      separatorBuilder: (
        BuildContext context,
        int index,
      ) =>
          const Divider(
        height: 20,
        color: Color.fromARGB(255, 154, 151, 151),
        thickness: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        final WirelessNetwork wirelessNetwork = wirelessNetworks[index];
        // final List<String> dataColumns = data.split(":");
        // final String level = wirelessNetwork.level;
        // final String name = dataColumns[1];

        final IconData icon = this.resolveOtherNetworksIcon(
            wirelessNetwork.level, wirelessNetwork.isPublic);

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
            ],
          ),
        );
      },
    );
  }

  IconData resolveOtherNetworksIcon(int level, Icon isPublic) {
    if (level == 0) {
      return Icons.wifi_1_bar_rounded;
    }
    if (level == 1) {
      return Icons.wifi_1_bar;
    }
    if (level == 2) {
      return Icons.wifi_2_bar;
    }
    if (level == 3) {
      return Icons.wifi;
    }

    if (isPublic == true) {
      return Icons.lock_open;
    }
    if (isPublic == false) {
      return Icons.lock;
    }
  }
}
