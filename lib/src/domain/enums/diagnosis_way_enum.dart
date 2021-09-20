enum DiagnosisWay {
  GuardCorps,
  FocusControl,
}

DiagnosisWay diagnosisWayFromInt(int value) {
  if (value >= DiagnosisWay.values.length) {
    throw Exception(
      'Try to convert $value to DiagnosisWay enum when max value of DiagnosisWay is ${DiagnosisWay.values.length - 1}',
    );
  }
  return DiagnosisWay.values[value];
}

int diagnosisWayToInt(DiagnosisWay value) {
  return value.index;
}
