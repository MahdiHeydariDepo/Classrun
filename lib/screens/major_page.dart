import 'package:flutter/material.dart';

class MajorPage extends StatelessWidget {
  const MajorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF9C7DCA),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("بعدی"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF9C7DCA),
                        elevation: 4,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "رشته ها",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: "رشته موردنظر را وارد کنید",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                fillColor: Colors.white,
                filled: true,
              ),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("انتخاب"),
                          Text("نام رشته"),
                          Text("کد رشته"),
                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: ListView(
                        children: [
                          majorItem("711", "مهندسی کامپیوتر"),
                          majorItem("111", "مهندسی عمران"),
                          majorItem("100", "مهندسی برق"),
                          majorItem("200", "آمار"),
                          majorItem("300", "ریاضی"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget majorItem(String code, String name) {
    return CheckboxListTile(
      value: false,
      onChanged: (_) {},
      controlAffinity: ListTileControlAffinity.leading,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(code),
        ],
      ),
    );
  }
}
