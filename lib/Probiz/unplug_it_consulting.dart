import 'package:flutter/material.dart';

class unplugItConsulting extends StatefulWidget {
  const unplugItConsulting({Key? key}) : super(key: key);

  @override
  State<unplugItConsulting> createState() => _unplugItConsultingState();
}

class _unplugItConsultingState extends State<unplugItConsulting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Unplug - It-Consulting"
        ),
      ),
    );
  }
}
