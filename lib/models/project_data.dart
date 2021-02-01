import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/pallets.dart';

import 'data.dart';

class Desktop extends StatefulWidget {
  final Data love;
  final String title;

  const Desktop({
    Key key,
    @required this.love,
    @required this.title,
  }) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    double _font = MediaQuery.of(context).size.width / 9;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Data instance = widget.love;
            Navigator.pushNamed(context, '/DesktopInfo', arguments: {
              'title': instance.title,
              'subtitle': instance.subtitle,
              'info': instance.info,
              'imageurl': instance.imageurl,
              'whiteImage': instance.whiteImage,
              'tool': instance.tool,
              'year': instance.year,
            });
          },
          child: Text(
            widget.title,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                color: (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
                fontSize: _font,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileData extends StatelessWidget {
  final Data love;
  final String title;

  const MobileData({
    Key key,
    @required this.love,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Data instance = love;
            Navigator.pushNamed(context, '/mobileInfo', arguments: {
              'title': instance.title,
              'subtitle': instance.subtitle,
              'info': instance.info,
              'imageurl': instance.imageurl,
              'whiteImage': instance.whiteImage,
              'tool': instance.tool,
              'year': instance.year,
            });
          },
          child: Text(
            title,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                color: (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
                fontSize: 38,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
