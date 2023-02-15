import 'package:list_favorite/my_obj.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  _ControllerBase();

  @observable
  List<MyObj> myListObj = List.generate(
    10,
    (index) => MyObj(name: "Item $index"),
  );

  // deveria ser usado com mais propriedades, não somente o totalFavorite...
  @computed
  bool get hasThreeFavorites => totalFavorite;

  @action
  favorite(MyObj myObj) => myObj.isFavorite = !myObj.isFavorite;

  @action
  bool get totalFavorite {
    int total = 0;
    for (MyObj myObj in myListObj) {
      if (myObj.isFavorite) {
        total++;
      }
    }
    if (total > 3) {
      return true;
    } else {
      return false;
    }
  }

  @action
  removeAllFavorites() {
    for (MyObj myObj in myListObj) {
      myObj.isFavorite = false;
    }
  }
}
