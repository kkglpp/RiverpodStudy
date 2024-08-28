import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actions;
  const BaseLayout({
    super.key,
    required this.title,
    required this.body,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        foregroundColor: Colors.white,
        title: Text(title,),
        actions: actions,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: body,
      ),
    );
  }
}
