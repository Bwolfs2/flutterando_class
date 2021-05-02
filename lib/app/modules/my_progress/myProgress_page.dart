import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_class/app/modules/my_progress/myProgress_store.dart';
import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/my_progress/widgets/header_selector/header_selector.dart';

class MyProgressPage extends StatefulWidget {
  final String title;
  const MyProgressPage({Key? key, this.title = 'Meu Progresso'}) : super(key: key);
  @override
  MyProgressPageState createState() => MyProgressPageState();
}

class MyProgressPageState extends ModularState<MyProgressPage, MyProgressStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Milliard',
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        centerTitle: true,
        leading: Center(
          child: Material(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xff202227),
            child: InkWell(
              onTap: () {
                Modular.to.pop();
              },
              borderRadius: BorderRadius.circular(24),
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.sort), onPressed: () {})
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: HeaderSelector((bool isSelectedVideo) {
            if (isSelectedVideo) {
              controller.pageController.animateToPage(1, duration: Duration(milliseconds: 1000), curve: Curves.ease);
            } else {
              controller.pageController.animateToPage(0, duration: Duration(milliseconds: 1000), curve: Curves.ease);
            }
          }),
        ),
      ),
      body: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PlaylistPage(),
          VideosPage()
        ],
      ),
    );
  }
}

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Em andamento (1)',
            style: TextStyle(
              color: Color(0xff86888D),
              fontFamily: 'Milliard',
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 375 / 85,
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 84 / 65,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Image.asset('assets/img/bwolf_video_$index.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xff202227),
                              maxRadius: 10,
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff00E7F9),
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          //color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gerência de Estado',
                                    style: TextStyle(color: Theme.of(context).accentColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Aula 0${index + 1}',
                                    style: TextStyle(color: Color(0xff86888D)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: LinearProgressIndicator(
                                        value: .4,
                                        backgroundColor: Colors.white54,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Text(
            'Concluídos (1)',
            style: TextStyle(
              color: Color(0xff86888D),
              fontFamily: 'Milliard',
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 375 / 85,
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 84 / 65,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Image.asset('assets/img/bwolf_video_0.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xff202227),
                              maxRadius: 10,
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff00E7F9),
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          //color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gerência de Estado',
                                    style: TextStyle(color: Theme.of(context).accentColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Aula 00',
                                    style: TextStyle(color: Color(0xff86888D)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        backgroundColor: Colors.white54,
                                        valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).accentColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class PlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Em andamento (1)',
            style: TextStyle(
              color: Color(0xff86888D),
              fontFamily: 'Milliard',
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 375 / 85,
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 84 / 65,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Image.asset('assets/img/bwolf_video_$index.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xff202227),
                              maxRadius: 10,
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff00E7F9),
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          //color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gerência de Estado',
                                    style: TextStyle(color: Theme.of(context).accentColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Aula 0${index + 1}',
                                    style: TextStyle(color: Color(0xff86888D)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: LinearProgressIndicator(
                                        value: .4,
                                        backgroundColor: Colors.white54,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Text(
            'Concluídos (1)',
            style: TextStyle(
              color: Color(0xff86888D),
              fontFamily: 'Milliard',
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 375 / 85,
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 84 / 65,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              color: Colors.red,
                              child: Image.asset('assets/img/bwolf_video_0.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xff202227),
                              maxRadius: 10,
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff00E7F9),
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          //color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gerência de Estado',
                                    style: TextStyle(color: Theme.of(context).accentColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Aula 00',
                                    style: TextStyle(color: Color(0xff86888D)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        backgroundColor: Colors.white54,
                                        valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).accentColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
