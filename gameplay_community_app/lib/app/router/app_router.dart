import 'package:gameplay_community_app/app/features/auth/presentation/auth_screen.dart';
import 'package:gameplay_community_app/app/features/form_create_room/presentation/form_create_room.dart';
import 'package:gameplay_community_app/app/features/home/presentation/home_screen.dart';
import 'package:gameplay_community_app/app/features/splash/presentation/splah_screen.dart';
import 'package:gameplay_community_app/app/router/app_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: AppRoutes.splashScreen, builder: (context, state) => const SplahScreen()),
    GoRoute(path: AppRoutes.auth, builder: (context, state) => const AuthScreen()),
    GoRoute(path: AppRoutes.home, builder: (context, state) => const HomeScreen()),
    GoRoute(path: AppRoutes.formCreateRoom, builder: (context, state) => const FormCreateRoom()),
  ],
);
