import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("بررسی نهایی")),
      body: Center(child: Text("اطلاعات انتخاب شده را اینجا نمایش دهید")),
    );
  }
}
