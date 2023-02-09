import 'package:auto_route/auto_route.dart';
import 'package:crudapp_riverpod/feature/dashboard/presentation/dashboard_view.dart';
import 'package:crudapp_riverpod/feature/home/presentation/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DashboardView,
      initial: true,
      path: '/DashBoard',
      name: 'DashBoardRouter',
    ),
    AutoRoute(
      path: '/homePage',
      page: HomePage,
      name: 'homePageRouter',
    ),
  ],
)
class $AppRouter {}
