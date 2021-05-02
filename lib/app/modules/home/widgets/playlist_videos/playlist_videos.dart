import 'package:flutter/material.dart';

class PlaylistVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/img/icons/play.png',
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 5),
                      child: Text(
                        'Bwolf Dev',
                        style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Playlist',
                  style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w500, color: Theme.of(context).accentColor),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'ver todos',
                          style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Theme.of(context).accentColor,
                          size: 10,
                        )
                      ],
                    ))
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 375 / 154,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 154 / 138,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color(0xff202227),
                      borderRadius: BorderRadiusDirectional.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 154 / 84,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(5),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/img/bwolf_video_$index.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'A História do Dinheiro',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Yuval Noah Hararl',
                                style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff86888D)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
