import 'package:flutter/material.dart';

class ListVideos extends StatelessWidget {
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
                Text(
                  'Bwolf Dev',
                  style: TextStyle(fontFamily: 'Milliard', fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Videos',
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
            aspectRatio: 375 / 112,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 150 / 112,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color(0xff202227),
                      borderRadius: BorderRadiusDirectional.circular(5),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/img/bwolf_video_$index.jpg',
                          ),
                        ),
                      ),
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
