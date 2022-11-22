// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    Home.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    Register.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    Login.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    Initial.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InitialScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/initial',
          fullMatch: true,
        ),
        RouteConfig(
          Home.name,
          path: '/home',
        ),
        RouteConfig(
          Register.name,
          path: '/register',
        ),
        RouteConfig(
          Login.name,
          path: '/login',
        ),
        RouteConfig(
          Initial.name,
          path: '/initial',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class Home extends PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '/home',
        );

  static const String name = 'Home';
}

/// generated route for
/// [RegisterScreen]
class Register extends PageRouteInfo<void> {
  const Register()
      : super(
          Register.name,
          path: '/register',
        );

  static const String name = 'Register';
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [InitialScreen]
class Initial extends PageRouteInfo<void> {
  const Initial()
      : super(
          Initial.name,
          path: '/initial',
        );

  static const String name = 'Initial';
}
