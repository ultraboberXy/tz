import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'services/subscription_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final isSubscribed = await SubscriptionService.isSubscribed();
  runApp(MyApp(isSubscribed: isSubscribed));
}

class MyApp extends StatelessWidget {
  final bool isSubscribed;
  const MyApp({super.key, required this.isSubscribed});


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Sub App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: isSubscribed ? HomeScreen() : OnboardingScreen(),
  );
  }
}