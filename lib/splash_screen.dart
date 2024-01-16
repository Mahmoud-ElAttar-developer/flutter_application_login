import 'package:flutter/material.dart';
import 'package:flutter_application_login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Login())));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff01c203),

      body: Center(child: Image.asset('assets/5529152.jpg')),

    );
  }
}