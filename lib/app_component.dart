import 'dart:async';
import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit {
  final title = 'Tour of Hero';
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);

  Future<void> _getHeroes() async {
    //_heroService.getAll().then((heroes) => this.heroes = heroes);
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;
}
