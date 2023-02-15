import 'package:mobx/mobx.dart';

part 'my_obj.g.dart';

class MyObj = _MyObjBase with _$MyObj;

abstract class _MyObjBase with Store {
  _MyObjBase({
    required this.name,
  });

  final String name;

  @observable
  bool isFavorite = false;
}
