import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';

class MyProgressStore extends NotifierStore<Exception, int> {
  MyProgressStore() : super(0);

  final PageController pageController = PageController(initialPage: 1);
}
