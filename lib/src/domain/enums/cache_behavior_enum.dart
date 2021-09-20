enum CacheBehavior {
  withoutCache, // Use only internet
  firstCache, // First local cache if exists, else internet
  lastCache, // First internet and if error is raise use cache if exists
  onlyCache, // Use only cache if exists
}

CacheBehavior cacheBehaviorFromInt(int value) {
  if (value >= CacheBehavior.values.length) {
    throw Exception(
      'Try to convert $value to CacheBehavior enum when max value of CacheBehavior is ${CacheBehavior.values.length - 1}',
    );
  }
  return CacheBehavior.values[value];
}

int cacheBehaviorToInt(CacheBehavior value) {
  return value.index;
}
