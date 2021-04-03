import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';
import 'filter_button_widget.dart';

class ListEditWidget extends StatelessWidget {
  const ListEditWidget({Key key, @override this.onFilterSelect})
      : super(key: key);
  final void Function(FilterButtonModel id) onFilterSelect;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FilterButtonWidget(
          filter: FilterButtonModel(
              id: 'Color', name: 'Color', icon: MyFlutterApp.colourIcon),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterButtonWidget(
          filter: FilterButtonModel(
              id: 'Light', name: 'Light', icon: MyFlutterApp.lightIcon),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterButtonWidget(
          filter: FilterButtonModel(
              id: 'Contrast',
              name: 'Contrast',
              icon: MyFlutterApp.contrastIcon),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterButtonWidget(
          filter: FilterButtonModel(
              id: 'Shadows', name: 'Shadows', icon: MyFlutterApp.shadowsIcon),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterButtonWidget(
          filter: FilterButtonModel(
            id: 'Saturation',
            name: 'Saturation',
            icon: MyFlutterApp.saturationIcon,
          ),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterButtonWidget(
          filter: FilterButtonModel(
              id: 'Temperature',
              name: 'Temperature',
              icon: MyFlutterApp.temperatureIcon),
          onTap: onFilterSelect,
        ),
      ],
    );
  }
}

class FilterButtonModel {
  FilterButtonModel({
    @required this.name,
    @required this.icon,
    @required this.id,
  });

  final String id;
  final String name;
  final IconData icon;
}
