import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_web/src/presentation/ui/homepage/new_homepage.dart';

import '../src/presentation/ui/homepage/newhomepage.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', page: NewHomepage, initial: true),
])
class AppRouter extends _$AppRouter {}
