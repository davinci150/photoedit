import 'package:flutter/material.dart';

import '../presentation/fonts.dart';

class EditTextWidget extends StatelessWidget {
  const EditTextWidget({
    Key key,
    this.editText,
  }) : super(key: key);

  final String editText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.clear,
              ),
              color: WidgetsBinding.instance.window.platformBrightness ==
                      Brightness.light
                  ? const Color(0xFFCACACA)
                  : const Color(0xFF646464),
              iconSize: 25,
              onPressed: () {},
            ),
            Text(
              editText,
              style: TextStyle(
                  fontSize: 17.0,
                  color: Theme.of(context).primaryIconTheme.color,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.sfPro),
            ),
            IconButton(
                color: const Color(0xFF2B83EC),
                iconSize: 25,
                onPressed: () {},
                icon: const Icon(
                  Icons.check,
                ))
          ]),
    );
  }
}
