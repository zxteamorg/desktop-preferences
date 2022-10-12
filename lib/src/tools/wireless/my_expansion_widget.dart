import "package:flutter/material.dart";

class MyExpansionWidget extends StatefulWidget {
  const MyExpansionWidget({
    Key? key,
    required Widget header,
    required Widget body,
  }) : super(key: key);

  @override
  State<MyExpansionWidget> createState() => _MyExpansionWidget();
}

class _MyExpansionWidget extends State<MyExpansionWidget> {
  @override
  Widget build(
    final BuildContext context,
  ) {
    return Column(
      children: <Widget>[
        this.widget.header,
        this.widget.body,
      ],
    );
  }
}
