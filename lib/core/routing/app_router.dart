import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vcareapp/core/di/dependency_injection.dart';
import 'package:vcareapp/core/routing/routes.dart';
import 'package:vcareapp/features/home/ui/home_screen.dart';
import 'package:vcareapp/features/login/logic/login_cubit.dart';
import 'package:vcareapp/features/login/ui/login_screen.dart';
import 'package:vcareapp/features/onBoarding/onboarding_screen.dart';
import 'package:vcareapp/features/sign_up/logic/signup_cubit.dart';
import 'package:vcareapp/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ),
        );
    }
  }
}
