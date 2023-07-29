import 'package:app/core/navigator/application_routes.dart';
import 'package:app/features/forgot_password/presentation/user_interfaces/forgot_password_screen.dart';
import 'package:app/features/home/presentation/user_interfaces/home_screen.dart';
import 'package:app/features/auth/presentation/user_interfaces/login_screen.dart';
import 'package:app/features/auth/presentation/user_interfaces/registration_screen.dart';
import 'package:app/features/about_us/about_us_screen.dart';
import 'package:app/features/reset_password/presentation/user_interfaces/reset_password_screen.dart';
import 'package:flutter/material.dart';

class RouterNavigator {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static final RouteObserver<ModalRoute> routeObserver =
      RouteObserver<ModalRoute>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ApplicationRoutes.authScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
          settings: settings,
        );
      case ApplicationRoutes.registrationScreen:
        return MaterialPageRoute(
          builder: (_) => const RegistrationScreen(),
          settings: settings,
        );
      case ApplicationRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case ApplicationRoutes.aboutUsScreen:
        return MaterialPageRoute(
          builder: (_) => const AboutUsScreen(),
          settings: settings,
        );

      case ApplicationRoutes.contactsScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case ApplicationRoutes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
          settings: settings,
        );
      case ApplicationRoutes.resetPasswordScreen:
        final code = args as String;
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(
            code: code,
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
          settings: settings,
        );
    }
  }
}
