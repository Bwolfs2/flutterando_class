import 'package:flutter/material.dart';

class PlaylistBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                      'assets/img/icons/stop.png',
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 3),
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
                  'Books',
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
            aspectRatio: 375 / 245,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 118 / 173,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/img/books/arquitetura_limpa.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '“Flutter na Prática”',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Milliard',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Frank Zammetti - 2020',
                                    style: TextStyle(fontFamily: 'Milliard', fontSize: 9, fontWeight: FontWeight.w500, color: Color(0xff86888D)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
