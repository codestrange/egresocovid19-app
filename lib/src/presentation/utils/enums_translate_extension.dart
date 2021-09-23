import 'package:egresocovid19/src/domain/enums/enums.dart';

//TODO: use context for localization

extension ContagionExtension on Contagion {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case Contagion.Traveler:
        return 'Viajero';
      case Contagion.Contact:
        return 'Contacto';
      case Contagion.Inderterminate:
        return 'Indeterminada';
      default:
        return name();
    }
  }
}

extension DiagnosisWayExtension on DiagnosisWay {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case DiagnosisWay.GuardCorps:
        return 'Cuerpo de Guardia';
      case DiagnosisWay.FocusControl:
        return 'Control de Foco';
      default:
        return name();
    }
  }
}

extension IncomeExtension on Income {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case Income.Home:
        return 'Hogar';
      case Income.IsolationCenter:
        return 'Centro de Aislamiento';
      case Income.HospitalRoom:
        return 'Sale del Hospital';
      case Income.IntermediateTherapy:
        return 'Terapia Intermedia';
      case Income.IntensiveTherapy:
        return 'Terapia Intensiva';
      default:
        return name();
    }
  }
}

extension TestDiagnosisExtension on TestDiagnosis {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case TestDiagnosis.AntigenTest:
        return 'Test de Antígenos';
      case TestDiagnosis.Biosensor:
        return 'Biosensor';
      case TestDiagnosis.PCR:
        return 'PCR-RT';
      case TestDiagnosis.IgMIgGAntibodyTest:
        return 'Test de anticuerpo IgM/IgG';
      default:
        return name();
    }
  }
}

extension AftermathExtension on Aftermath {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case Aftermath.Fatigue:
        return 'Fatiga';
      case Aftermath.Headache:
        return 'Dolor de Cabeza';
      case Aftermath.Alopecia:
        return 'Alopecia';
      case Aftermath.RespiratorySymptoms:
        return 'Síntomas Respiratorios';
      case Aftermath.MuscleBoneNeuropathicPain:
        return 'Dolores musculares y óseos';
      case Aftermath.PsychologicalPsychiatricDisorders:
        return 'Desorden Psicológico-Psiquiátrico';
      case Aftermath.SexualDisorders:
        return 'Desorden Sexual';
      case Aftermath.SleepDisorder:
        return 'Desorden del Sueño';
      case Aftermath.PersistenceOfLossOfSmell:
        return 'Perdida del Olfato';
      case Aftermath.PersistenceOfLossOfAppetite:
        return 'Perdida del Apetito';
      case Aftermath.GastrointestinalSymptoms:
        return 'Síntomas Gastrointestinales';
      case Aftermath.Dizziness:
        return 'Mareos';
      case Aftermath.DesiresToVomit:
        return 'Vómitos';
      case Aftermath.Others:
        return 'Otros';
      default:
        return name();
    }
  }
}

extension TreatmentExtension on Treatment {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case Treatment.Herferon:
        return 'Herferón';
      case Treatment.InterferonGeneric:
        return 'Interferón (genérico)';
      case Treatment.Jusvinza:
        return 'Jusvinza';
      case Treatment.Heberferon:
        return 'Heberferón';
      case Treatment.FraxiparinLowMolecularWeightHeparins:
        return 'Fraxiparina/Heparinas de bajo peso molecular';
      case Treatment.Nasalferon:
        return 'Nasalferón';
      case Treatment.Prednisone:
        return 'Prednisona';
      case Treatment.Prevengovir:
        return 'Prevengovir';
      case Treatment.Betamethasone:
        return 'Betametasona';
      case Treatment.Italizumab:
        return 'Italizumab';
      default:
        return name();
    }
  }
}

extension ProphylaxisExtension on Prophylaxis {
  String name() => toString().split('.').last;

  String visualName() {
    switch (this) {
      case Prophylaxis.Prevengovir:
        return 'Prevengovir';
      case Prophylaxis.Vimang:
        return 'Vimang';
      case Prophylaxis.Moringa:
        return 'Moringa';
      case Prophylaxis.BiomodulinT:
        return 'Biomodulina T';
      case Prophylaxis.VitaminC:
        return 'Vitamina C';
      case Prophylaxis.Polivit:
        return 'Polivit';
      case Prophylaxis.Turmeric:
        return 'Cúrcuma';
      case Prophylaxis.Soverana2AndPlus:
        return 'Soberana 02 + Soberana PLus';
      case Prophylaxis.Honey:
        return 'Miel';
      case Prophylaxis.VitaminA:
        return 'Vitamina A';
      case Prophylaxis.Ginger:
        return 'Géngibre';
      case Prophylaxis.SoveranaPlus:
        return 'Soberana Plus';
      case Prophylaxis.Abdala:
        return 'Abdala';
      case Prophylaxis.Covid19Previously:
        return 'Ya tuvo COVID-19 previamente';
      default:
        return name();
    }
  }
}
