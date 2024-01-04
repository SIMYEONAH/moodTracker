import 'package:finalmood/repos/user_repo.dart';
import 'package:finalmood/screens/home_screen.dart';
import 'package:finalmood/screens/log_in_screen.dart';
import 'package:finalmood/screens/main_navigator.dart';
import 'package:finalmood/screens/sign_up_screen.dart';
import 'package:finalmood/screens/welcome_screen.dart';
import 'package:finalmood/screens/write_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: "/",
    redirect: (context, state) {
      final isLoggedIn = ref.read(authRepo).isLoggedIn;
      if (!isLoggedIn) {
        if (state.matchedLocation != SignupScreen.routeURL &&
            state.matchedLocation != LoginScreen.routeURL) {
          return SignupScreen.routeURL;
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        name: WelcomeScreen.routeName,
        path: WelcomeScreen.routeURL,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        name: SignupScreen.routeName,
        path: SignupScreen.routeURL,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        name: LoginScreen.routeName,
        path: LoginScreen.routeURL,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: MainNavigationScreen.routeName,
        path: MainNavigationScreen.routeURL,
        builder: (context, state) => const MainNavigationScreen(),
      ),
      GoRoute(
        name: HomeScreen.routeName,
        path: HomeScreen.routeURL,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: WriteScreen.routeName,
        path: WriteScreen.routeURL,
        builder: (context, state) => const WriteScreen(),
      ),
    ],
  );
});
