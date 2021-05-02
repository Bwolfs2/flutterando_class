import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_class/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashStore> {
  var futures = [
    Future.delayed(Duration(seconds: 1))
  ];

  @override
  void initState() {
    super.initState();

    Future.wait(futures).then((value) => Modular.to.navigate('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
