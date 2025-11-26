import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vcareapp/core/networking/api_constants.dart';
import 'package:vcareapp/core/routing/app_router.dart';
import 'package:vcareapp/doc_app.dart';
import 'package:vcareapp/flavors/flavor_config.dart';
import 'package:vcareapp/flavors/main_common.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  mainCommon(
    flavor: Flavor.production,
    baseUrl: ApiConstants.apiBaseUrl,
    name: 'production',
  );
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
