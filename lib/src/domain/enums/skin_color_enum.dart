enum SkinColor {
  White,
  Black,
  Other,
}

SkinColor skinColorFromInt(int value) {
  if (value >= SkinColor.values.length) {
    throw Exception(
      'Try to convert $value to SkinColor enum when max value of SkinColor is ${SkinColor.values.length - 1}',
    );
  }
  return SkinColor.values[value];
}

int skinColorToInt(SkinColor value) {
  return value.index;
}

SkinColor? skinColorNullableFromInt(int? value) {
  if (value == null) {
    return null;
  }
  if (value >= SkinColor.values.length) {
    throw Exception(
      'Try to convert $value to SkinColor enum when max value of SkinColor is ${SkinColor.values.length - 1}',
    );
  }
  return SkinColor.values[value];
}

int? skinColorNullableToInt(SkinColor? value) {
  if (value == null) {
    return null;
  }
  return value.index;
}
