import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';
import 'app/vakinha_burger_app.dart';

void main() async {
  await Env.i.load();
  runApp(VakingaBurgerApp());
}
