
import 'package:flutter/material.dart';

import 'texture_filter_button_widget.dart';

class ListTextureWidget extends StatelessWidget {
  const ListTextureWidget({Key key, @override this.onFilterSelect})
      : super(key: key);
  final void Function(FilterTextureButtonModel id) onFilterSelect;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FilterTextureButtonWidget(
          filterTexture: FilterTextureButtonModel(
              id: 'None', name: 'None', image: 'assets/original_filter_image.png',
              color: const Color(0xFF959595),
              isSelected: false,
              ),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterTextureButtonWidget(
          filterTexture: FilterTextureButtonModel(
              id: 'Dust 01', name: 'Dust 01', image: 'assets/dust_1_textures_image.png',
              color: const Color(0xFF0F0F0F),
            isSelected: false
              ),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterTextureButtonWidget(
          filterTexture: FilterTextureButtonModel(
              id: 'Dust 02',
              name: 'Dust 02',
                                 image: 'assets/dust_2_textures_image.png',
color: const Color(0xFF0F0F0F),
isSelected: true
),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterTextureButtonWidget(
          filterTexture: FilterTextureButtonModel(
              id: 'Dust 03', name: 'Dust 03', image: 'assets/dust_3_textures_image.png',
color:  const Color(0xFF0F0F0F),
isSelected: true
),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
        FilterTextureButtonWidget(
          filterTexture: FilterTextureButtonModel(
            id: 'Dust 04',
            name: 'Dust 04',
                                image: 'assets/dust_4_textures_image.png',
            color : const Color(0xFF0F0F0F),
            isSelected: true
          ),
          onTap: onFilterSelect,
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}

class FilterTextureButtonModel {
  FilterTextureButtonModel({
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
