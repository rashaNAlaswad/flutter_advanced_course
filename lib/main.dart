import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'core/router/app_router.dart';
import 'app/app.dart';

void main() {
  setupGetIt();
  
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
