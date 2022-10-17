import "package:flutter/material.dart" show Colors, Divider, Icons;
import "package:flutter/widgets.dart"
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        Flexible,
        Icon,
        IconData,
        Key,
        MainAxisSize,
        Padding,
        Row,
        SingleChildScrollView,
        Spacer,
        StatelessWidget,
        Text,
        Widget;
import "package:provider/provider.dart" show Consumer;

import "wireless_controller.dart" show WirelessController;
import "wireless_level_icon.dart" show WirelessLevelIcon;
import "wireless_service_contract.dart"
    show PreferredWirelessNetwork, WirelessNetwork, WirelessLevel;
import "wireless_switch.dart" show WirelessSwitch;
import "my_expansion_widget.dart" show MyExpansionWidget;

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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this._buildSection1(controller),
        const Divider(),
        if (controller.isEnabled) this._buildSection2(controller),
        if (controller.isEnabled) const Divider(),
        this._buildSection3(controller),
      ],
    );
  }

  Widget _buildSection1(
    WirelessController controller,
  ) {
    return WirelessSwitch(controller);
  }

  Widget _buildSection2(
    WirelessController controller,
  ) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            this._buildPreferredNetworksSection(controller),
            this._buildOtherNetworksSection(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildPreferredNetworksSection(
    WirelessController controller,
  ) {
    final List<Widget> preferredNetworkRows = controller.preferredNetworks.map(
      (PreferredWirelessNetwork wirelessNetwork) {
        final bool isConnected = wirelessNetwork == controller.connectedNetwork;

        final IconData wirelessLevelIconData =
            this.resolveOtherNetworksIcon(wirelessNetwork.level);
        final IconData? isPublicIconData =
            this.resolveNetworksIsPublic(wirelessNetwork.isPublic);

        final StatelessWidget wirelessLevelIcon = WirelessLevelIcon(
          iconData: wirelessLevelIconData,
          color: isConnected ? Colors.blue : null,
        );
        final StatelessWidget? isPublicIcon = isPublicIconData != null
            ? WirelessLevelIcon(
                iconData: isPublicIconData,
              )
            : null;

        return Row(
          children: <Widget>[
            wirelessLevelIcon,
            Text(
              wirelessNetwork.name,
            ),
            if (isPublicIcon != null) const Spacer(),
            if (isPublicIcon != null) isPublicIcon,
          ],
        );
      },
    ).toList(growable: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16.0),
          child: Text("Preferred Network"),
        ),
        Column(
          children: preferredNetworkRows,
        )
      ],
    );
  }

  Widget _buildOtherNetworksSection(
    WirelessController controller,
  ) {
    final List<Widget> otherNetworkRows = controller.otherNetworks.map(
      (WirelessNetwork wirelessNetwork) {
        final IconData wirelessLevelIconData =
            this.resolveOtherNetworksIcon(wirelessNetwork.level);
        final IconData? isPublicIconData =
            this.resolveNetworksIsPublic(wirelessNetwork.isPublic);

        final StatelessWidget wirelessLevelIcon = WirelessLevelIcon(
          iconData: wirelessLevelIconData,
        );
        final StatelessWidget? isPublicIcon = isPublicIconData != null
            ? WirelessLevelIcon(
                iconData: isPublicIconData,
              )
            : null;
        return Row(
          children: <Widget>[
            wirelessLevelIcon,
            Text(
              wirelessNetwork.name,
            ),
            if (isPublicIcon != null) const Spacer(),
            if (isPublicIcon != null) isPublicIcon,
          ],
        );
      },
    ).toList(growable: false);

    return MyExpansionWidget(
      header: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text("Other Networks"),
      ),
      body: Column(
        children: otherNetworkRows,
      ),
    );
  }

  Widget _buildSection3(
    WirelessController controller,
  ) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Network Preferences",
      ),
    );
  }

// Widget _buildWirelessNetworks(final WirelessController controller) {
//   final List<WirelessNetwork> wirelessNetworks = controller.otherNetworks;
//   return ListView.builder(
//     itemCount: wirelessNetworks.length,
//     itemBuilder: (BuildContext context, int index) {
//       final WirelessNetwork wirelessNetwork = wirelessNetworks[index];

//       final IconData icon =
//           this.resolveOtherNetworksIcon(wirelessNetwork.level);

//       final IconData? iconIsPublic =
//           this.resolveNetworksIsPublic(wirelessNetwork.isPublic);

//       return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: <Widget>[
//             Icon(icon, size: 36, color: Colors.black),
//             Text(wirelessNetwork.name,
//                 style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.black.withOpacity(0.8),
//                     decoration: TextDecoration.none)),
//             const Spacer(),
//             Icon(iconIsPublic, size: 26, color: Colors.black),
//           ],
//         ),
//       );
//     },
//   );
// }

  IconData resolveOtherNetworksIcon(WirelessLevel level) {
    if (level == WirelessLevel.poor) {
      return Icons.wifi_1_bar_rounded;
    }
    if (level == WirelessLevel.good) {
      return Icons.wifi_1_bar;
    }
    if (level == WirelessLevel.nice) {
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
// }
}
