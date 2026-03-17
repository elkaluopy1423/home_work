import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                /// الصورة الكبيرة فوق
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.blueGrey[200],
                ),

                const SizedBox(height: 15),

                /// شريط العنوان
                Row(
                  children: [
                    Container(width: 40, height: 20, color: Colors.grey[300]),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 20, color: Colors.grey[300]),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// الصف الأول
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 40, color: Colors.green[200]),
                          const SizedBox(height: 10),
                          Container(height: 40, color: Colors.green[200]),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 90,
                              color: Colors.orange[300],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 90,
                              color: Colors.orange[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                /// الصف البنفسجي
                Row(
                  children: [
                    Expanded(
                      child: Container(height: 80, color: Colors.purple[200]),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Container(height: 35, color: Colors.purple[300]),
                          const SizedBox(height: 10),
                          Container(height: 35, color: Colors.purple[200]),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 80, color: Colors.purple[200]),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 80, color: Colors.purple[100]),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                /// الصف الأزرق
                Row(
                  children: [
                    Expanded(
                      child: Container(height: 60, color: Colors.teal[200]),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 60, color: Colors.teal[300]),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                /// المستطيل الأخير
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
