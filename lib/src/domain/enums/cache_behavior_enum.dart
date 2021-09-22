import 'package:json_annotation/json_annotation.dart';

enum CacheBehavior {
  @JsonValue(0)
  withoutCache, // Use only internet
  @JsonValue(1)
  firstCache, // First local cache if exists, else internet
  @JsonValue(2)
  lastCache, // First internet and if error is raise use cache if exists
  @JsonValue(3)
  onlyCache, // Use only cache if exists
}
