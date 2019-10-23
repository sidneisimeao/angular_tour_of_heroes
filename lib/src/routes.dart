import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'hero_list_component.template.dart' as hero_list_template;
import 'dashborad_component.template.dart' as dashborad_template;
import 'hero_component.template.dart' as hero_template;

export 'route_paths.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_list_template.HeroListComponentNgFactory,
  );

   static final hero = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_template.HeroComponentNgFactory,
  );

  static final dashborad = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashborad_template.DashboardComponentNgFactory,
    // useAsDefault: true,
  );

  static final all = <RouteDefinition>[
    heroes,
    dashborad,
    hero,
    RouteDefinition.redirect(
        path: '',
        redirectTo: RoutePaths.dashboard
            .toUrl()) //  useAsDefault: true, substitui o redirecionamento
  ];
}
