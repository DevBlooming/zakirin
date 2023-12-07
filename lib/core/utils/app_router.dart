import 'package:go_router/go_router.dart';
import 'package:zakirin/features/azkar/views/azkar_home_view.dart';
import 'package:zakirin/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const homeView = '/home';
  static const azkarHomeView = '/azkarHome';
  static const azkarDetailsView = '/azkarDetails';
  static const searchView = '/search';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: azkarHomeView,
        builder: (context, state) => const AzkarHomeView(),
      ),
      // GoRoute(
      //   path: azkarDetailsView,
      //   builder: (context, state) => const AzkarDetailsView(
      //     appBarTitle: category.categoryName,
      //     azkarList: category.azkarListName,
      //   ),
      // ),
    ],
  );
}
