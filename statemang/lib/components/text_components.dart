import 'package:flutter/widgets.dart';
import 'package:statemang/models/utils/color_constrain.dart';

class TextComponent extends StatelessWidget {
  final textcomponentValue;
  const TextComponent({super.key,required this.textcomponentValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textcomponentValue,
      style: TextStyle(color: ColorContraint.primaryColor, fontSize: 33),
    );
  }
}
