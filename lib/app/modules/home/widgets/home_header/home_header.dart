import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeHeader extends StatefulWidget {
  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  var pageController = PageController(initialPage: 0);

  late StreamSubscription sty;

  @override
  void initState() {
    super.initState();

    sty = Stream.periodic(Duration(seconds: 10)).listen((event) {
      var index = pageController.page?.ceil();
      if (index == 0) {
        pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.ease);
      } else {
        pageController.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    sty.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: AspectRatio(
            aspectRatio: 375 / 300,
            child: PageView.builder(
                controller: pageController,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          color: Colors.green,
                          child: Image.asset(
                            index % 2 == 0 ? 'assets/img/bwolf.jpg' : 'assets/img/jacob.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Text(
                              index % 2 == 0 ? 'Bwolf Dev' : 'Jacob Moura',
                              style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'Milliard', fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Um novo modelo de',
                              style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'Milliard', fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              index % 2 == 0 ? 'Gambetas' : 'Comunidade',
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'Milliard',
                                fontWeight: FontWeight.w700,
                                foreground: Paint()
                                  ..strokeWidth = 1
                                  ..style = PaintingStyle.stroke
                                  ..color = Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  onPressed: () {
                                    Modular.to.pushNamed('/myProgress');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'Assistir',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Milliard',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(color: Colors.white, width: 2),
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'Detalhes',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Milliard',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          width: 40,
                          child: Image.asset('assets/img/logo/logo_white.png'),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Container(
                          width: 40,
                          child: Image.asset('assets/img/logo/flagBr.png'),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: (context, child) => Container(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  width: pageController.page?.ceil() == 0 ? 10 : 5,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.5,
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  width: pageController.page?.ceil() == 1 ? 10 : 5,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.5,
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
