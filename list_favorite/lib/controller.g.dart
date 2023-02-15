// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
  late final _$myListObjAtom =
      Atom(name: '_ControllerBase.myListObj', context: context);

  @override
  List<MyObj> get myListObj {
    _$myListObjAtom.reportRead();
    return super.myListObj;
  }

  @override
  set myListObj(List<MyObj> value) {
    _$myListObjAtom.reportWrite(value, super.myListObj, () {
      super.myListObj = value;
    });
  }

  late final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase', context: context);

  @override
  dynamic favorite(MyObj myObj) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.favorite');
    try {
      return super.favorite(myObj);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
myListObj: ${myListObj}
    ''';
  }
}
