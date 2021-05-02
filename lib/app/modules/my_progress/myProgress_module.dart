import 'package:flutterando_class/app/modules/my_progress/myProgress_Page.dart';
import 'package:flutterando_class/app/modules/my_progress/myProgress_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyProgressModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MyProgressStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MyProgressPage()),
  ];
}
