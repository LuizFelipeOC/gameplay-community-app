import 'package:gameplay_community_app/app/features/splash_screen/splah_screen.dart';
import 'package:gameplay_community_app/app/router/app_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [GoRoute(path: AppRoutes.splashScreen, builder: (context, state) => const SplahScreen())],
);
