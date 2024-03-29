import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart'; // Location
import 'hero.dart';

import 'hero_service.dart';
import 'route_paths.dart';

@Component(
    selector: 'my-hero',
    directives: [coreDirectives, formDirectives],
    templateUrl: 'hero_component.html')

class HeroComponent implements OnActivate {
  //@Input()
  Hero hero;

  final HeroService _heroService;
  final Location _location;

 HeroComponent(this._heroService, this._location);

  @override
  void onActivate(_, RouterState current) async {
      final id = getId(current.parameters);
      
      if (id != null) hero = await (_heroService.get(id));
  }

 
}

