import 'package:flutter/material.dart';
import 'package:wadada/pages/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:
        'https://uxtgthowcssqdeaxauqg.supabase.co', // Replace with your Supabase URL
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV4dGd0aG93Y3NzcWRlYXhhdXFnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzAxODg4NjMsImV4cCI6MjA0NTc2NDg2M30.HjZbTzJEo-cIpTy0nLwlDSrGfGgQlr2ZYAAqiiJDtEs', // Replace with your anon key
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
