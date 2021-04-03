import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';
import '../widget/filter_slider_widget.dart';
import '../widget/list_edit_widget.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({
    Key key,
    @required this.showOrHideBottomToolbar,
  }) : super(key: key);
  final void Function(bool isBottomToolvarVisible) showOrHideBottomToolbar;

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class FilterButtonWidget extends StatelessWidget {
  const FilterButtonWidget({
    Key key,
    this.textFilter,
    this.iconFilter,
  }) : super(key: key);

  final IconData iconFilter;
  final String textFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                textFilter,
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
                //onTap: showHideBottomToolbar(true),
                child: CircleAvatar(
                  backgroundColor:
                      WidgetsBinding.instance.window.platformBrightness ==
                              Brightness.light
                          ? const Color(0xFFF6F7F8)
                          : const Color(0xFF212121),
                  radius: 24,
                  child: Icon(
                    iconFilter,
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

class _EditorScreenState extends State<EditorScreen> {
  FilterButtonModel selectedFilter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Visibility(
            visible: selectedFilter != null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: FilterSliderWidget(
                editText: selectedFilter?.name ?? '',
                onAsseptDeclineButtonClick: (bool isAssept) {
                  setState(() {
                    selectedFilter = null;
                    widget.showOrHideBottomToolbar(true);
                  });
                },
              ),
            ),
          )
        ])),
        const SizedBox(
          height: 16,
        ),
        if (selectedFilter == null)
          SizedBox(
            height: 72,
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListEditWidget(
                  onFilterSelect: (FilterButtonModel model) {
                    setState(() {
                      selectedFilter = model;
                      widget.showOrHideBottomToolbar(false);
                    });
                  },
                )),
          )
        else
          const SizedBox.shrink(),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
