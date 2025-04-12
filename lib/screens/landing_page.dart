import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0C6DD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/callender_girl.png', // Place your image in `assets/` and define in pubspec.yaml
            width: 220,
          ),
          const SizedBox(height: 20),
          const Text(
            "ClassRun",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "برنامه‌ ریزی آموزشی",
            style: TextStyle(color: Color(0xFF9C7DCA), fontSize: 16),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              "با کلاس‌ران می‌توانید بدون نیاز به ورود، برنامه‌های کلاسی دانشگاه خود را مشاهده کنید، تغییرات لحظه‌ای کلاس‌ها را دنبال کنید و از زمان‌بندی دقیق جلسات مطلع شوید.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/universities');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF9C7DCA),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text("مشاهده برنامه‌ کلاسی"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
