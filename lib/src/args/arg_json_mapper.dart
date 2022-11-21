typedef FromJson<FieldType> = FieldType Function(dynamic map);
typedef ToJson<WidgetType> = Map<String, dynamic> Function(WidgetType widget);

class ArgJsonMapper<FieldType, WidgetType> {
  ArgJsonMapper({required this.fromJson, required this.toJson});

  final FromJson<FieldType> fromJson;
  final ToJson<WidgetType> toJson;
}
