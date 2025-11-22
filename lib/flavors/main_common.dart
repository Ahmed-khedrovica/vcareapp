import 'package:flutter/cupertino.dart';
import 'package:vcareapp/core/routing/app_router.dart';
import 'package:vcareapp/doc_app.dart';
import 'package:vcareapp/flavors/flavor_config.dart';

void mainCommon({
  required Flavor flavor,
  required String baseUrl,
  required String name,
}) {
  FlavorConfig(flavor: flavor, baseUrl: baseUrl, name: name);

  runApp(DocApp(appRouter: AppRouter()));
}
