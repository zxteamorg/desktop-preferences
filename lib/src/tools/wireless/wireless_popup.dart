import "package:flutter/material.dart"
    show Colors, Divider, Icons, Switch;
import "package:flutter/widgets.dart"
    show
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Flexible,
        FontWeight,
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
        TextStyle,
        TextOverflow,
        Widget;
import "package:provider/provider.dart" show Consumer;

import "wireless_controller.dart" show WirelessController;
import "wireless_level_icon.dart" show WirelessLevelIcon;
import "wireless_service_contract.dart"
    show PreferredWirelessNetwork, WirelessNetwork;
import "my_expansion_widget.dart" show MyExpansionWidget;

class WirelessPopup extends StatelessWidget {
  const WirelessPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<WirelessController>(builder: (
      BuildContext context,
      WirelessController controller,
      Widget? child,
    ) {
      if (controller.isInitialized) {
        return this._buildContent(context, controller);
      } else {
        return const Text("Initializing...");
      }
    });
  }

  Widget _buildContent(
    final BuildContext context,
    final WirelessController controller,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this._buildHeaderSection(controller),
        const Divider(),
        if (controller.isEnabled)
          this._buildMiddleScrollableSection(controller),
        if (controller.isEnabled) const Divider(),
        this._buildFooterSection(controller),
      ],
    );
  }

  Widget _buildHeaderSection(
    WirelessController controller,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
          const Spacer(),
          Switch(
            value: controller.isEnabled,
            onChanged: (bool value) {
              if (controller.isEnabled) {
                controller.disable();
              } else {
                controller.enable();
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildMiddleScrollableSection(
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
        final Widget? isPublicIcon =
            WirelessPopup._buildWirelessLockIcon(wirelessNetwork.isPrivate);

        return Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: WirelessLevelIcon(
                level: wirelessNetwork.level,
                isConnected: isConnected,
              ),
            ),
            Text(
              wirelessNetwork.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
        final Widget? isPublicIcon =
            WirelessPopup._buildWirelessLockIcon(wirelessNetwork.isPrivate);

        return Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: WirelessLevelIcon(
                level: wirelessNetwork.level,
              ),
            ),
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

  /// Form a section Network Preferences.
  Widget _buildFooterSection(
    WirelessController controller,
  ) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Network Preferences",
      ),
    );
  }

  ///
  /// Build widget according to passed "true" or "false"
  ///
  /// if passed "false" the method produce Padding widget
  ///
  /// if passed "true" the method return null
  ///

  static Widget? _buildWirelessLockIcon(bool isPublicWirelessNetwork) {
    final IconData? isPublicIconData =
        isPublicWirelessNetwork == false ? Icons.lock : null;

    final Widget? isPublicIcon = isPublicIconData != null
        ? Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              isPublicIconData,
            ),
          )
        : null;

    return isPublicIcon;
  }
}
