import 'package:flutter/material.dart';

class HeaderSelector extends StatefulWidget {
  final Function(bool isVideoSelected) changeSelected;

  const HeaderSelector(
    this.changeSelected, {
    Key? key,
  }) : super(key: key);

  @override
  _HeaderSelectorState createState() => _HeaderSelectorState();
}

class _HeaderSelectorState extends State<HeaderSelector> {
  bool videos = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xff202227),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            alignment: videos ? Alignment.centerLeft : Alignment.centerRight,
            curve: Curves.ease,
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xff64666B),
                borderRadius: BorderRadius.circular(3),
              ),
              height: double.infinity,
              width: MediaQuery.of(context).size.width * .41,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    widget.changeSelected(true);
                    setState(() {
                      videos = true;
                    });
                  },
                  child: Text(
                    'Flutterando Videos',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Milliard',
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    widget.changeSelected(false);
                    setState(() {
                      videos = false;
                    });
                  },
                  child: Text(
                    'Flutterando Playlists',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Milliard',
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
