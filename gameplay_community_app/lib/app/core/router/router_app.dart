import 'package:gameplay_community_app/app/features/splash_screen/splah_screen.dart';
import 'package:go_router/go_router.dart';

final routerApp = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const SplahScreen())],
);
