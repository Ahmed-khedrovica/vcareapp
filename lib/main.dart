import 'package:flutter/material.dart';
import 'package:vcareapp/core/routing/app_router.dart';
import 'package:vcareapp/doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
