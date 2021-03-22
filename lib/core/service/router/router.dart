import 'package:flutter/cupertino.dart';

import '../../navigation/route_argument.dart';
import '../context_provider/context_provider_i.dart';

class Router implements RouterI {
  final ContextProviderI contextProvider;

  Router({@required this.contextProvider});

  @override
  Future<dynamic> navigateTo(String routeName, {Object arg}) {
    return contextProvider
        .getNavigationKey()
        .currentState
        .pushNamed(routeName, arguments: arg);
  }

  @override
  Future<dynamic> navigateReplacementTo(String routeName, {RouteArgument arg}) {
    return contextProvider
        .getNavigationKey()
        .currentState
        .pushReplacementNamed(routeName, arguments: arg);
  }

  @override
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {RouteArgument arg}) {
    return contextProvider
        .getNavigationKey()
        .currentState
        .pushNamedAndRemoveUntil(routeName, ModalRoute.withName('home_page'),
            arguments: arg);
  }

  @override
  void pop() {
    return contextProvider.getNavigationKey().currentState.pop();
  }
}

abstract class RouterI {
  Future<dynamic> navigateTo(String routeName, {Object arg});

  Future<dynamic> navigateReplacementTo(String routeName, {RouteArgument arg});

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {RouteArgument arg});

  void pop();
}
