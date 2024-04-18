import 'package:auto_route/auto_route.dart';
import 'package:unique_fl/core/routing/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(const SignInRoute());
  }
}
