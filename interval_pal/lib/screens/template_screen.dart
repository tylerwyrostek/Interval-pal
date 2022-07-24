import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TemplateState();
  }
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 255, 160, 6));
  }
}
