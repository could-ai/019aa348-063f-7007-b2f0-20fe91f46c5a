import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CouldAI User App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> capabilities = [
      {
        'icon': Icons.design_services,
        'title': 'تصميم واجهات المستخدم',
        'description': 'بناء شاشات جميلة ومتجاوبة باستخدام Flutter Widgets.',
        'color': Colors.blue
      },
      {
        'icon': Icons.storage,
        'title': 'قواعد البيانات (Supabase)',
        'description': 'إنشاء الجداول، وإدارة البيانات، والمصادقة.',
        'color': Colors.green
      },
      {
        'icon': Icons.code,
        'title': 'كتابة الأكواد والمنطق',
        'description': 'تنفيذ منطق العمل، إدارة الحالة، والوظائف المعقدة.',
        'color': Colors.orange
      },
      {
        'icon': Icons.bug_report,
        'title': 'إصلاح الأخطاء',
        'description': 'تحليل المشاكل البرمجية واقتراح الحلول الفورية.',
        'color': Colors.red
      },
      {
        'icon': Icons.file_present,
        'title': 'تحليل الملفات',
        'description': 'فهم الصور والمستندات التي ترفعها وتحويلها لأكواد.',
        'color': Colors.purple
      },
      {
        'icon': Icons.rocket,
        'title': 'نشر الوظائف السحابية',
        'description': 'إنشاء Edge Functions لمعالجة المهام في الخلفية.',
        'color': Colors.teal
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('قدرات المساعد الذكي'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ماذا يمكنني أن أفعل؟',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'أنا هنا لمساعدتك في بناء تطبيقك بالكامل. إليك بعض ما أجيده:',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: capabilities.length,
                  itemBuilder: (context, index) {
                    final item = capabilities[index];
                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: item['color'].withOpacity(0.1),
                          child: Icon(item['icon'], color: item['color']),
                        ),
                        title: Text(
                          item['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(item['description']),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
