import 'package:flutter/material.dart';
import 'package:kids_app/DataStorage/Counting.dart';
import 'package:kids_app/DataStorage/EnglishMonth.dart';
import 'package:kids_app/DataStorage/UrduLetters.dart';
import 'package:kids_app/DataStorage/WeekDays.dart';
import 'package:kids_app/Screens/Xylophone.dart';

import 'DataStorage/Body_Parts.dart';
import 'DataStorage/EnglishAlphas.dart';
import 'Screens/Show_Data.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kids App"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png",
                ),
              fit: BoxFit.fill
            )
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(50, 50),
                bottom: Radius.elliptical(90, 90)),
            color: Colors.transparent,
          ),
          margin: EdgeInsets.fromLTRB(30, 70, 30, 10),
          child: GridView.count(
            crossAxisCount: 1,
            padding: EdgeInsets.only(top: 20, bottom: 20),
            scrollDirection: Axis.horizontal,
            children: [
              buildContainer("assets/images/pageIcons/ABC.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                    data: englishAlphas,
                    language: "en-US",
                    showLaguageButton: false,
                    title: " ABC ",
                  );
                }));
              }),
              buildContainer("assets/images/pageIcons/123.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                      data: numbers,
                      language: "en-US",
                      showLaguageButton: true,
                      title: " 123 ");
                }));
              }),
              buildContainer("assets/images/pageIcons/urduAlphas.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                      data: urduAlphas,
                      language: "ur-pk",
                      showLaguageButton: false,
                      title: " ا ب ت ");
                }));
              }),
              buildContainer("assets/images/pageIcons/bodyParts.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                      data: bodyParts,
                      language: "en-US",
                      showLaguageButton: true,
                      title: " Body Parts ");
                }));
              }),
              buildContainer("assets/images/pageIcons/weekDays.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                      data: weekDays,
                      language: "en-US",
                      showLaguageButton: false,
                      title: " Week Days ");
                }));
              }),
              buildContainer("assets/images/pageIcons/monthNames.jpg", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ShowData(
                      data: monthNames,
                      language: "en-US",
                      showLaguageButton: false,
                      title: " Month of the Year ");
                }));
              }),
              buildContainer("assets/images/pageIcons/xylophone.png", () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return XyloPhone();
                }));
              }),
            ],
          ),
        )
      ]),
    );
  }

  Widget buildContainer(String path, onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(10, 30),
              bottom: Radius.elliptical(40, 90)),
          child: Image.asset(
            path,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
