import 'package:flutter/material.dart';
import 'package:kids_app/Screens/BuildWidget.dart';

class ShowData extends StatefulWidget {
  ShowData(
      {required this.data,
      required this.language,
      required this.showLaguageButton,
      required this.title});
  List<Widget> data;
  String language;
  String title;
  bool showLaguageButton;
  static bool englishLanguage = true;
  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  late PageView _pageView;
  @override
  void changeLanguage(context) {
    if (ShowData.englishLanguage == true) {
      NewWidget.setlanguage("ur-PK");
      setState(() {
        ShowData.englishLanguage = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(" Voice Language Changed in Urdu Successfully ")));
    } else {
      NewWidget.setlanguage("en-US");
      setState(() {
        ShowData.englishLanguage = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(" Voice Language Changed in English Successfully ")));
    }
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      ShowData.englishLanguage = true;
    });
    NewWidget.setlanguage(widget.language);
    _pageView = PageView(
      children: widget.data,
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics().parent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightBlueAccent,
        actions: widget.showLaguageButton == true
            ? [
                ElevatedButton(
                  onPressed: () {
                    changeLanguage(context);
                  },
                  child: ShowData.englishLanguage == true
                      ? Text(" Change in Urdu")
                      : Text(" Change in English"),
                )
              ]
            : [],
      ),
      body: _pageView,
    );
  }
}
