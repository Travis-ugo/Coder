import 'package:flutter/material.dart';

class Data {
  final String title;
  final String subtitle;
  final String info;
  final String imageurl;
  final String whiteImage;
  final String tool;
  final String year;
  final String github;

  Data({
    this.tool = '',
    this.year = '',
    @required this.title,
    @required this.info,
    @required this.imageurl,
    @required this.subtitle,
    @required this.whiteImage,
    @required this.github,
  });
}

final Data travis = Data(
  title: 'Portfolio',
  subtitle: 'Portfolio Web application',
  info: '''
A responsive portfolio web app and a user friendy interface,
giving users controll to choose between colored or dark mood dispaly,
this web appliction diplays skills and projects of 'Travis Okonicha Ugochukwu'.
this web application is written in dart lang with googles flutter framework,
and hosted online with googles firebase system.
  ''',
  imageurl: 'portfolio.png',
  whiteImage: 'black..jpg',
  tool: 'Dart lang\nFlutter\nfirebase\nVs Code\nAdobe Xd',
  year: '2020',
  github: 'https://github.com/Travis-ugo/Coder',
);
final Data telegram = Data(
  title: 'User Bot',
  subtitle: 'Telegram Bot',
  info: '''
An automated telegram bot helps telegram users recieve forex signals
from one group chat to another chat room automaticlly. this fast and
effecient telegram bot is hosted on heroku and keeps running for a long
period of time, however requires maintenace.
''',
  imageurl: 'teegram.png',
  whiteImage: 'robinic.jpg',
  tool: 'Python\nVs Code',
  year: '2020',
  github: 'https://github.com/Travis-ugo/fx_forwarder',
);

final Data world = Data(
  title: 'New App',
  subtitle: 'World News app',
  info: '''
A world news application with the use of a News api
to display world news, articles and trending topics.
this mobile application is written in dart language,
making it very effecient and fast.
  ''',
  imageurl: 'news.jpeg',
  whiteImage: 'newsb&w.jpeg',
  tool: 'Dart lang\nFlutter\nAdobe Xd\nAndriod Studio',
  year: '2020',
  github: 'https://github.com/Travis-ugo',
);

final Data soccer = Data(
  title: 'Sport News App',
  subtitle: 'International sport News app',
  info: '''
A sport news application with the use of a sport
news api helps display live football data to the user
with miniml use of data to get sport information and a
beautiful user friendly user interface.
  ''',
  imageurl: 'soccer.jpeg',
  whiteImage: 'soccerb&w.jpeg',
  tool: 'Adobe Xd\nFlutter\nVs Code',
  year: '2021',
  github: 'https://github.com/Travis-ugo/New-berlin',
);
