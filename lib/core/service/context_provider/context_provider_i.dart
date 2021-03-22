import 'package:flutter/cupertino.dart';

abstract class ContextProviderI {
  BuildContext getBuildContext();

  GlobalKey<NavigatorState> getNavigationKey();
}
