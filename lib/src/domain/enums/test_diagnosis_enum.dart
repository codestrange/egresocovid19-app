enum TestDiagnosis {
  AntigenTest,
  Biosensor,
  PCR,
  IgMIgGAntibodyTest,
}

TestDiagnosis testDiagnosisFromInt(int value) {
  if (value >= TestDiagnosis.values.length) {
    throw Exception(
      'Try to convert $value to TestDiagnosis enum when max value of TestDiagnosis is ${TestDiagnosis.values.length - 1}',
    );
  }
  return TestDiagnosis.values[value];
}

int testDiagnosisToInt(TestDiagnosis value) {
  return value.index;
}
