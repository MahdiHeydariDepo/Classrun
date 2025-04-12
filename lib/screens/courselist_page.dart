import 'package:flutter/material.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder list of courses
    final List<Map<String, String>> placeholderCourses = [
      {
        "title": "طراحی الگوریتم",
        "code": "3468",
        "university": "خلیج فارس بوشهر",
        "uniCode": "6037",
        "major": "مهندسی کامپیوتر",
        "teacher": "حبیب رستمی",
        "weekday": "دوشنبه",
        "date": "1404/1/18",
        "status": "برگزار شده",
      },
      {
        "title": "مهندسی نرم افزار 2",
        "code": "3856",
        "university": "خلیج فارس بوشهر",
        "uniCode": "6037",
        "major": "مهندسی کامپیوتر",
        "teacher": "ابراهیم صحاف زاده",
        "weekday": "یکشنبه",
        "date": "1404/1/17",
        "status": "لغو شده",
      },
      {
        "title": "نام درس",
        "code": "کد",
        "university": "نام دانشگاه",
        "uniCode": "کد دانشگاه",
        "major": "نام رشته",
        "teacher": "نام استاد",
        "weekday": "-",
        "date": "-",
        "status": "-",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: Column(
        children: [
          _buildHeader(context),
          _buildSearchField(),
          _buildFilterBar(),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              itemCount: placeholderCourses.length,
              itemBuilder: (context, index) {
                final course = placeholderCourses[index];
                return _buildCourseCard(course);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF9C7DCA),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
      ),
      padding: const EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          const Text(
            "دروس",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: "درس موردنظر را وارد کنید",
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFilterBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _filterChip("روز"),
            _filterChip("تاریخ"),
            _filterChip("ساعت"),
            _filterChip("کلاس های لغو شده"),
          ],
        ),
      ),
    );
  }

  Widget _filterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: () {
          // Placeholder for filter action
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black87,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(label),
      ),
    );
  }

  Widget _buildCourseCard(Map<String, String> course) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("درس : ${course['title']} (${course['code']})"),
            const SizedBox(height: 6),
            Text("دانشگاه : ${course['university']} (${course['uniCode']})"),
            Text("رشته : ${course['major']}"),
            const SizedBox(height: 6),
            Text("استاد : ${course['teacher']}"),
            const SizedBox(height: 6),
            Text("روز : ${course['weekday']}"),
            Text("تاریخ : ${course['date']}"),
            Text("وضعیت : ${course['status']}"),
          ],
        ),
      ),
    );
  }
}
