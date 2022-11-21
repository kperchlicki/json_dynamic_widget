import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/src/args/align_args.dart';
import 'package:json_dynamic_widget/src/encoders/json_widget_encoder.dart';
import 'package:json_theme/json_theme.dart';

class JsonAlignEncoder extends JsonWidgetEncoder<Align> {
  @override
  dynamic encodeArgs(Align widget) {
    return {
      ...AlignArgs.alignment.toJson(widget),
      ...AlignArgs.heightFactor.toJson(widget),
      ...AlignArgs.widthFactor.toJson(widget),
    };
  }

  @override
  String getType() {
    return 'align';
  }
}
