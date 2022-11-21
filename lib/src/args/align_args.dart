import 'package:flutter/material.dart';
import 'package:json_class/json_class.dart';
import 'package:json_theme/json_theme.dart';

import 'arg_json_mapper.dart';

class AlignArgs {
  static final ArgJsonMapper alignment =
      ArgJsonMapper<AlignmentGeometry?, Align>(
    fromJson: (map) => ThemeDecoder.decodeAlignment(
      map['alignment'],
      validate: false,
    ),
    toJson: (widget) => {
      'alignment': ThemeEncoder.encodeAlignment(widget.alignment as Alignment?)
    },
  );
  static final ArgJsonMapper heightFactor = ArgJsonMapper<double?, Align>(
    fromJson: (map) => JsonClass.parseDouble(map['heightFactor']),
    toJson: (widget) => {'heightFactor': widget.heightFactor},
  );
  static final ArgJsonMapper widthFactor = ArgJsonMapper<double?, Align>(
    fromJson: (map) => JsonClass.parseDouble(map['widthFactor']),
    toJson: (widget) => {'widthFactor': widget.heightFactor},
  );
}
