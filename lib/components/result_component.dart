import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  const ResultComponent({super.key, required this.info});
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff0a5c9c),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(
        info,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}