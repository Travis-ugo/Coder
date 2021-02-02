import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis/utils/pallets.dart';
import 'package:url_launcher/url_launcher.dart';

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w700,
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/projects'),
            child: Container(
              width: MediaQuery.of(context).size.width / 7.5,
              height: MediaQuery.of(context).size.height / 15,
              decoration: BoxDecoration(
                border: Border.all(
                    color: (isColored ? Color(0xFF555555) : Color(0xFFf6f6f6)),
                    style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'VIEW ALL WORK',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: 1,

                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    //color: mainColo,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
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

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // IconButton(
        //   icon: Icon(MdiIcons.email),
        //   color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
        //   iconSize: 14,
        //   onPressed: () async =>
        //       await launch(Uri.parse('https://thrinitee@gmail.com').toString()),
        // ),
        IconButton(
          icon: Icon(MdiIcons.twitter),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 18,
          onPressed: () async => await launch(
              Uri.parse('https://twitter.com/Travis86622225').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.github),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 18,
          onPressed: () async => await launch(
              Uri.parse('https://github.com/Travis-ugo').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.linkedin),
          color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
          iconSize: 18,
          onPressed: () async => await launch(Uri.parse(
                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
              .toString()),
        ),
        // IconButton(
        //   icon: Icon(MdiIcons.basketball),
        //   color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
        //   iconSize: 16,
        //   onPressed: () async {
        //     await launch(
        //         Uri.parse('https://dribbble.com/travis-ugo').toString());
        //   },
        // ),
      ],
    );
  }
}

class RecentWork extends StatelessWidget {
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
                fontSize: 38,
                color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
            child: Container(
              width: 180,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(
                  color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'VIEW ALL WORK',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
                    thickness: 1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
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

class MobilePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Travis Okonicha ugochukwu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(MdiIcons.email),
                color: Color(0xFF303030),
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://thrinitee@gmail.com').toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Color(0xFF303030),
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: Color(0xFF303030),
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.linkedin),
                color: Color(0xFF303030),
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse(
                          'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.basketball),
                color: Color(0xFF303030),
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://dribbble.com/travis-ugo').toString());
                },
              ),
            ],
          ),
          Text('version 2.1'),
          Text('. . .'),
        ],
      ),
    );
  }
}

class DesktopPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Travis Okonicha ugochukwu',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xFF303030),
              ),
            ),
          ),
          Text(
            'version 2.1',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xFF303030),
              ),
            ),
          ),
          FooterIcon(),
          Text('version 2.1'),
          Text('. . .'),
        ],
      ),
    );
  }
}

var text = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontWeight: FontWeight.w500,
    color: Color(0xFFF4FAFD),
    letterSpacing: 0.5,
  ),
);

class FooterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(MdiIcons.email),
          color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
          iconSize: 16,
          onPressed: () async {
            await launch(Uri.parse('https://thrinitee@gmail.com').toString());
          },
        ),
        IconButton(
          icon: Icon(MdiIcons.twitter),
          color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
          iconSize: 16,
          onPressed: () async {
            await launch(
                Uri.parse('https://twitter.com/Travis86622225').toString());
          },
        ),
        IconButton(
          icon: Icon(MdiIcons.github),
          color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
          iconSize: 16,
          onPressed: () async {
            await launch(Uri.parse('https://github.com/Travis-ugo').toString());
          },
        ),
        IconButton(
          icon: Icon(MdiIcons.linkedin),
          color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
          iconSize: 16,
          onPressed: () async {
            await launch(Uri.parse(
                    'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                .toString());
          },
        ),
        IconButton(
          icon: Icon(MdiIcons.basketball),
          color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
          iconSize: 16,
          onPressed: () async {
            await launch(
                Uri.parse('https://dribbble.com/travis-ugo').toString());
          },
        ),
      ],
    );
  }
}
