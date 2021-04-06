import 'package:flutter/material.dart';

import 'video_filter_button_widget.dart';

class ListVideoWidget extends StatelessWidget {
  const ListVideoWidget({Key key, @override this.onFilterSelect})
      : super(key: key);
  final void Function(FilterVideoButtonModel id) onFilterSelect;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FilterVideoButtonWidget(
          filterVideo: FilterVideoButtonModel(
            id: 'Vintage',
            name: 'Vintage',
            image: 'assets/original_filter_image.png',
            color: const Color(0xFF4C6FEC),
            isSelected: false,
          ),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterVideoButtonWidget(
          filterVideo: FilterVideoButtonModel(
              id: 'Slow Mo',
              name: 'Slow Mo',
              image: 'assets/original_filter_image.png',
              color: const Color(0xFFEC904C),
              isSelected: false),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterVideoButtonWidget(
          filterVideo: FilterVideoButtonModel(
              id: 'Glitter',
              name: 'Glitter',
              image: 'assets/original_filter_image.png',
              color: const Color(0xFFD64CEC),
              isSelected: true),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterVideoButtonWidget(
          filterVideo: FilterVideoButtonModel(
              id: 'Prism',
              name: 'Prism',
              image: 'assets/original_filter_image.png',
              color: const Color(0xFFEC4C69),
              isSelected: true),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterVideoButtonWidget(
          filterVideo: FilterVideoButtonModel(
              id: 'Subtitles',
              name: 'Subtitles',
              image: 'assets/original_filter_image.png',
              color: const Color(0xFF304D2E),
              isSelected: true),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}

class FilterVideoButtonModel {
  FilterVideoButtonModel({
    @required this.name,
    @required this.image,
    @required this.id,
    @required this.color,
    @required this.isSelected,
  });
  final bool isSelected;
  final Color color;
  final String id;
  final String name;
  final String image;
}
