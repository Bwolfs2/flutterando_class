import 'package:flutter/material.dart';

class WhereYouStopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 93,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 15),
              child: Text(
                'Continue de onde parou',
                style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff86888D)),
              ),
            ),
            AspectRatio(
              aspectRatio: 375 / 61,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 240 / 61,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Color(0xff202227),
                        borderRadius: BorderRadiusDirectional.circular(5),
                      ),
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 81 / 50,
                            child: Container(
                              margin: const EdgeInsets.all(5),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gerência de Estado',
                                    style: TextStyle(
                                      fontFamily: 'Milliard',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Bwolf Dev',
                                    style: TextStyle(
                                      fontFamily: 'Milliard',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff86888D),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
      ),
    );
  }
}
