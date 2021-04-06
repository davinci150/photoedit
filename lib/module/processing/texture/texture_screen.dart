import 'package:flutter/material.dart';

import '../widget/filter_slider_widget.dart';
import '../widget/list_texture_widget.dart';

class TextureScreen extends StatefulWidget {
  const TextureScreen({
    Key key,@required this.showOrHideBottomToolbar,
  }) : super(key: key);
final void Function(bool isBottomToolvarVisible) showOrHideBottomToolbar;
  @override
  _TextureScreen createState() => _TextureScreen();
}

class _TextureScreen extends State<TextureScreen> {
 FilterTextureButtonModel selectedFilterTexture;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          //const Contrast(),
          Visibility(
            visible: selectedFilterTexture !=null,
                      child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: FilterSliderWidget(
                endValue: 200,
                startValue: 0,
                defaultValue: 100,
                sliderValueListener: (double value){
                         debugPrint('slider value = $value');
                },
                editText: selectedFilterTexture?.name ?? '',
                onAsseptDeclineButtonClick: (bool isAssept) {
                  setState(() {
                    selectedFilterTexture = null;
                    widget.showOrHideBottomToolbar(true);
                  });
                },
              ),
              ),
          ),
        ])),
        const SizedBox(
          height: 16,
        ),
        if (selectedFilterTexture == null)
         SizedBox(
            height: 72,
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListTextureWidget(
                  onFilterSelect: (FilterTextureButtonModel modelTexture) {
                    setState(() {
                      selectedFilterTexture = modelTexture;
                      widget.showOrHideBottomToolbar(false);
                    });
                  },
                )),
          )
        else const SizedBox.shrink(),
        const SizedBox(
          height: 16,
        )
        
      ],
      
    );
  }
}
