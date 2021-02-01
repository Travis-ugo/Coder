import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/desktop/menu.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

TextStyle largeText = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 75,
    fontWeight: FontWeight.w700,
    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
  ),
);

class HomeTablet extends StatefulWidget {
  @override
  _HomeTabletState createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(62.0),
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
                                      fontSize: 32,
                                      letterSpacing: 1.2,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                Text(
                                  '''\ni design and build beautiful mobile and\ndesktop for users design and\nbuild beautiful''',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 14,
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
                                radius: 70,
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
            SizedBox(height: 50),
            Text(
              'YOUNG AND CREATIVE',
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Consistency is all i need to Hard work\nwill do the magic and Practice',
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  fontSize: 18,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice ',
              textAlign: TextAlign.center,
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.3,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 200),
            RecentTablet(),
            SizedBox(height: 70),
            MobilePin(),
          ],
        ),
      ),
    );
  }
}

class RecentTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 46,
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/mobileproject');
            },
            child: Container(
              width: 170, //MediaQuery.of(context).size.width / 2.3,
              height: 40, //MediaQuery.of(context).size.height / 16,
              decoration: BoxDecoration(
                border: Border.all(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'View Recent work',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    thickness: 1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
