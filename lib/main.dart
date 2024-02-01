import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/app_routers.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
    );
  }
}