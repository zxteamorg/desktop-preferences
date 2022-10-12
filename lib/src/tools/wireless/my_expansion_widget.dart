import "package:flutter/material.dart";

class MyExpansionWidget extends StatefulWidget {
  final Widget header;
  final Widget body;
  const MyExpansionWidget({
    Key? key,
    required this.header,
    required this.body,
  }) : super(key: key);

  @override
  State<MyExpansionWidget> createState() => _MyExpansionState();
}

class _MyExpansionState extends State<MyExpansionWidget> {
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
