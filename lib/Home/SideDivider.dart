import 'package:brain/colors/colors.dart';
import 'package:flutter/material.dart';

Widget SideDivider(var title, var description) {
  GlobalKey _toolTipKey = GlobalKey();
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
            height: 20,
            child: Row(
              children: <Widget>[
                VerticalDivider(color: PrimaryDarkColor, thickness: 5),
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 18, fontFamily: "ProductSans-Bold"),
                ),
              ],
            )),
        GestureDetector(
          onTap: () {
            final dynamic tooltip = _toolTipKey.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: new Tooltip(
              key: _toolTipKey,
              message: description,
              preferBelow: false,
              padding: EdgeInsets.all(8.0),
              showDuration: Duration(seconds: 5),
              child: Icon(
                Icons.info,
                size: 20,
                color: PrimaryDarkColor.withOpacity(0.5),
              )),
        ),
      ],
    ),
  );
}
