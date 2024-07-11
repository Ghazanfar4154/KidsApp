import 'package:flutter/material.dart';
import 'package:kids_app/DataStorage/constants.dart';

import '../Screens/BuildWidget.dart';

List<Widget> bodyParts = [
  NewWidget(
    widgetName: "Ear",
    widget: buildWidget("Ear", "assets/images/Body_Parts/ear.PNG"),
  ),
  NewWidget(
    widgetName: "Hair",
    widget: buildWidget("Hair", "assets/images/Body_Parts/hair.PNG"),
  ),
  NewWidget(
    widgetName: "Head",
    widget: buildWidget("Head", "assets/images/Body_Parts/head.PNG"),
  ),
  NewWidget(
    widgetName: "Teeth",
    widget: buildWidget("Teeth", "assets/images/Body_Parts/teeth.PNG"),
  ),
  NewWidget(
    widgetName: "Lips",
    widget: buildWidget("Lips", "assets/images/Body_Parts/lips.PNG"),
  ),
  NewWidget(
    widgetName: "Mouth",
    widget: buildWidget("Mouth", "assets/images/Body_Parts/mouth.PNG"),
  ),
  NewWidget(
    widgetName: "Tongue",
    widget: buildWidget("Tongue", "assets/images/Body_Parts/tongue.PNG"),
  ),
  NewWidget(
    widgetName: "Eye",
    widget: buildWidget("Eye", "assets/images/Body_Parts/eye.PNG"),
  ),
  NewWidget(
    widgetName: "Eyebrow",
    widget: buildWidget("EyeBrow", "assets/images/Body_Parts/eyebrow.PNG"),
  ),
  NewWidget(
    widgetName: "Nose",
    widget: buildWidget("Nose", "assets/images/Body_Parts/nose.PNG"),
  ),
  NewWidget(
    widgetName: "Face",
    widget: buildWidget("Face", "assets/images/Body_Parts/face.PNG"),
  ),
  NewWidget(
    widgetName: "Neck",
    widget: buildWidget("Neck", "assets/images/Body_Parts/neck.PNG"),
  ),
  NewWidget(
    widgetName: "Shoulder",
    widget: buildWidget("Shoulder", "assets/images/Body_Parts/shoulder.PNG"),
  ),
  NewWidget(
    widgetName: "Finger",
    widget: buildWidget("Finger", "assets/images/Body_Parts/finger.PNG"),
  ),
  NewWidget(
    widgetName: "Elbow",
    widget: buildWidget("Elbow", "assets/images/Body_Parts/elbow.PNG"),
  ),
  NewWidget(
    widgetName: "Thumb",
    widget: buildWidget("Thumb", "assets/images/Body_Parts/thumb.PNG"),
  ),
  NewWidget(
    widgetName: "Arm",
    widget: buildWidget("Arm", "assets/images/Body_Parts/arm.PNG"),
  ),
  NewWidget(
    widgetName: "Hand",
    widget: buildWidget("Hand", "assets/images/Body_Parts/hand.PNG"),
  ),
  NewWidget(
    widgetName: "Legs",
    widget: buildWidget("Legs", "assets/images/Body_Parts/legs.PNG"),
  ),
  NewWidget(
    widgetName: "Knee",
    widget: buildWidget("Knee", "assets/images/Body_Parts/Knee.PNG"),
  ),
  NewWidget(
    widgetName: "Foot",
    widget: buildWidget("Foot", "assets/images/Body_Parts/foot.PNG"),
  ),
];

Container buildWidget(String widgetName, String widgetAddress) {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: Image.asset(widgetAddress)),
        Center(
          child: Text(
            widgetName,
            style:
                bodyNameStyle.merge(TextStyle(color: colorList[colorNumber()])),
          ),
        )
      ],
    ),
  );
}
