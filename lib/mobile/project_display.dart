import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/recent.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 200),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Year',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    data['year'],
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tools',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    data['tool'],
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        //color: Colors.black,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Text(
                            data['title'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                letterSpacing: 0.5,
                                color: Color(0xFF3D68DF),
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 20),
                          Text(
                            data['subtitle'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 18,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 10),
                          Text(
                            data['info'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 0.5,
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[100],
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      data['imageurl'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  MobilePin(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      FeatherIcons.github,
                      size: 15,
                    ),
                    onPressed: () async {
                      await launch(Uri.parse(data['github']).toString());
                    },
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'BACK TO PROJETS',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
