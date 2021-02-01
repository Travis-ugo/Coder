import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

import 'menu.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

ScrollController scrollController;
TextStyle largeText = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 75,
    fontWeight: FontWeight.w700,
    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
  ),
);

class _HomeDesktopState extends State<HomeDesktop> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
    });
  }

  double height = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF1F1F1F)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(65.0),
                    child: Center(
                      child: IconButton(
                        icon: (isColored ? moon : sun),
                        onPressed: () {
                          setState(() {
                            isColored = isColored == true ? false : true;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 80),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi,\ni'm Travis Okonicha",
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25.5,
                                        letterSpacing: 1.2,
                                        color: (isColored
                                            ? Color(0xFF303030)
                                            : Color(0xFFf6f6f6)),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '''\ni design and build beautiful mobile and desktop for\nusers design and build beautiful''',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                80,
                                        letterSpacing: 1.1,
                                        color: (isColored
                                            ? Color(0xFF3D3D3D)
                                            : Color(0xFFf6f6f6)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                  ),
                                  MyIcon(),
                                  SizedBox(height: 15),
                                ],
                              ),
                              Hero(
                                tag: 'love',
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/black..jpg'),
                                  radius:
                                      MediaQuery.of(context).size.width / 12.3,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            CupertinoIcons.chevron_compact_down,
                            size: 45,
                            color: (isColored
                                ? Color(0xFF3D3D3D)
                                : Color(0xFFf6f6f6)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Menu(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    'YOUNG AND CREATIVE',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Consistency is all i need to Hard work\nwill do the magic and Practice',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 36,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Consistency is all i need to succed Hard work and Practice will\ndo the magic Hard work and Practice ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 150),
                  Recent(),
                  SizedBox(height: 30),
                  DesktopPin(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
