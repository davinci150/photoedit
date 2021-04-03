import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';
import 'list_edit_widget.dart';

class FilterButtonWidget extends StatelessWidget {
  const FilterButtonWidget(
      {Key key, @required this.filter, @required this.onTap})
      : super(key: key);

  final FilterButtonModel filter;
  final void Function(FilterButtonModel model) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                filter.name,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: AppFonts.sfPro,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  onTap(filter);
                },
                child: CircleAvatar(
                  backgroundColor:
                      WidgetsBinding.instance.window.platformBrightness ==
                              Brightness.light
                          ? const Color(0xFFF6F7F8)
                          : const Color(0xFF212121),
                  radius: 24,
                  child: Icon(
                    filter.icon,
                    size: 20,
                    color: WidgetsBinding.instance.window.platformBrightness ==
                            Brightness.light
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
