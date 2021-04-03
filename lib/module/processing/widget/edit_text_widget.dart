import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';

class EditTextWidget extends StatelessWidget {
  const EditTextWidget({
    Key key,
    this.editText,
    this.onAsseptDeclineButtonClick,
  }) : super(key: key);
  final void Function(bool isAssept) onAsseptDeclineButtonClick;
  final String editText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              onPressed: () {
                onAsseptDeclineButtonClick(false);
              },
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
                onPressed: () {
                  onAsseptDeclineButtonClick(true);
                },
                icon: const Icon(
                  Icons.check,
                ))
          ]),
    );
  }
}
