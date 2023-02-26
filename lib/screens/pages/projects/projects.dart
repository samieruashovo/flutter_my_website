import 'package:flutter/material.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/models/url_helper.dart';

class Projects extends StatefulWidget {
  const Projects({Key key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  static List<Color> _fill = <Color>[
    Colors.grey[200],
    Color(0xFFf8fbf8),
    Colors.black
  ];
  @override
  Widget build(BuildContext context) {
    bool powerButton = false;
    return Center(
      child: AnimatedContainer(
        duration: Duration(seconds: 2),
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 5,
          decoration: powerButton
              ? BoxDecoration(
                  color: Colors.pink.withOpacity(0.7),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: _fill,
                    stops: [0.1, 0.5, 0.9],
                  ),
                )
              : BoxDecoration(
                  color: Colors.purple[400],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(7.0, 7.0),
                        blurRadius: 7.0,
                        spreadRadius: -0.1),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 5.0,
                        spreadRadius: -8.0)
                  ],
                ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: kThemeAnimationDuration,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'Ubuntu',
              ),
              child: Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    UrlHelper.launchUrl(
                        'https://play.google.com/store/apps/details?id=com.violettechapp.resizable_image&fbclid=IwAR1VfrIb_5eBi0FQdXi9PCX85P4gK1WUj-boUKpfFSZjt9_243UfrBsPm1k');
                  },
                  child: Text(
                    'DocScanner',
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
