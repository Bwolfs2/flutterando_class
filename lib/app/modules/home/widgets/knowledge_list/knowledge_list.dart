import 'package:flutter/material.dart';

class KnowledgeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Row(
              children: [
                Text(
                  'Trilhas de conhecimento',
                  style: TextStyle(
                    fontFamily: 'Milliard',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xff86888D,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 375 / 90,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 197 / 85,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color(0xff202227),
                      borderRadius: BorderRadiusDirectional.circular(5),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Image.asset(
                              'assets/img/icons/classes.png',
                              width: 10,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Iniciante',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Milliard',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Assistir',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Milliard',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Theme.of(context).accentColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Mussum Ipsum, cacilds vidis litro abertis. Nullam volutpat...',
                                maxLines: 2,
                                style: TextStyle(color: Color(0xff86888D)),
                              ))
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
