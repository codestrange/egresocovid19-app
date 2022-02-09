import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:flutter/material.dart';

extension EnumExtension on Enum {
  String get name => toString().split('.').last;
}

extension ContagionExtension on Contagion {
  String visualName(BuildContext context) {
    switch (this) {
      case Contagion.Traveler:
        return Messages.of(context)!.enumContagionTraveler;
      case Contagion.Contact:
        return Messages.of(context)!.enumContagionContact;
      case Contagion.Inderterminate:
        return Messages.of(context)!.enumContagionInderterminate;
    }
  }
}

extension DiagnosisWayExtension on DiagnosisWay {
  String visualName(BuildContext context) {
    switch (this) {
      case DiagnosisWay.GuardCorps:
        return Messages.of(context)!.enumDiagnosisWayGuardCorps;
      case DiagnosisWay.FocusControl:
        return Messages.of(context)!.enumDiagnosisWayFocusControl;
    }
  }
}

extension IncomeExtension on Income {
  String visualName(BuildContext context) {
    switch (this) {
      case Income.Home:
        return Messages.of(context)!.enumIncomeHome;
      case Income.IsolationCenter:
        return Messages.of(context)!.enumIncomeIsolationCenter;
      case Income.HospitalRoom:
        return Messages.of(context)!.enumIncomeHospitalRoom;
      case Income.IntermediateTherapy:
        return Messages.of(context)!.enumIncomeIntermediateTherapy;
      case Income.IntensiveTherapy:
        return Messages.of(context)!.enumIncomeIntensiveTherapy;
    }
  }
}

extension TestDiagnosisExtension on TestDiagnosis {
  String visualName(BuildContext context) {
    switch (this) {
      case TestDiagnosis.AntigenTest:
        return Messages.of(context)!.enumTestDiagnosisAntigenTest;
      case TestDiagnosis.Biosensor:
        return Messages.of(context)!.enumTestDiagnosisBiosensor;
      case TestDiagnosis.PCR:
        return Messages.of(context)!.enumTestDiagnosisPCR;
      case TestDiagnosis.IgMIgGAntibodyTest:
        return Messages.of(context)!.enumTestDiagnosisIgMIgGAntibodyTest;
    }
  }
}

extension AftermathExtension on Aftermath {
  String visualName(BuildContext context) {
    switch (this) {
      case Aftermath.Fatigue:
        return Messages.of(context)!.enumAftermathFatigue;
      case Aftermath.Headache:
        return Messages.of(context)!.enumAftermathHeadache;
      case Aftermath.Alopecia:
        return Messages.of(context)!.enumAftermathAlopecia;
      case Aftermath.RespiratorySymptoms:
        return Messages.of(context)!.enumAftermathRespiratorySymptoms;
      case Aftermath.MuscleBoneNeuropathicPain:
        return Messages.of(context)!.enumAftermathMuscleBoneNeuropathicPain;
      case Aftermath.PsychologicalPsychiatricDisorders:
        return Messages.of(context)!
            .enumAftermathPsychologicalPsychiatricDisorders;
      case Aftermath.SexualDisorders:
        return Messages.of(context)!.enumAftermathSexualDisorders;
      case Aftermath.SleepDisorder:
        return Messages.of(context)!.enumAftermathSleepDisorder;
      case Aftermath.PersistenceOfLossOfSmell:
        return Messages.of(context)!.enumAftermathPersistenceOfLossOfSmell;
      case Aftermath.PersistenceOfLossOfAppetite:
        return Messages.of(context)!.enumAftermathPersistenceOfLossOfAppetite;
      case Aftermath.GastrointestinalSymptoms:
        return Messages.of(context)!.enumAftermathGastrointestinalSymptoms;
      case Aftermath.Dizziness:
        return Messages.of(context)!.enumAftermathDizziness;
      case Aftermath.DesiresToVomit:
        return Messages.of(context)!.enumAftermathDesiresToVomit;
      case Aftermath.Others:
        return Messages.of(context)!.enumAftermathOthers;
    }
  }
}

extension TreatmentExtension on Treatment {
  String visualName(BuildContext context) {
    switch (this) {
      case Treatment.Herferon:
        return Messages.of(context)!.enumTreatmentHerferon;
      case Treatment.InterferonGeneric:
        return Messages.of(context)!.enumTreatmentInterferonGeneric;
      case Treatment.Jusvinza:
        return Messages.of(context)!.enumTreatmentJusvinza;
      case Treatment.Heberferon:
        return Messages.of(context)!.enumTreatmentHeberferon;
      case Treatment.FraxiparinLowMolecularWeightHeparins:
        return Messages.of(context)!
            .enumTreatmentFraxiparinLowMolecularWeightHeparins;
      case Treatment.Nasalferon:
        return Messages.of(context)!.enumTreatmentNasalferon;
      case Treatment.Prednisone:
        return Messages.of(context)!.enumTreatmentPrednisone;
      case Treatment.Prevengovir:
        return Messages.of(context)!.enumTreatmentPrevengovir;
      case Treatment.Betamethasone:
        return Messages.of(context)!.enumTreatmentBetamethasone;
      case Treatment.Italizumab:
        return Messages.of(context)!.enumTreatmentItalizumab;
    }
  }
}

extension ProphylaxisExtension on Prophylaxis {
  String visualName(BuildContext context) {
    switch (this) {
      case Prophylaxis.Prevengovir:
        return Messages.of(context)!.enumProphylaxisPrevengovir;
      case Prophylaxis.Vimang:
        return Messages.of(context)!.enumProphylaxisVimang;
      case Prophylaxis.Moringa:
        return Messages.of(context)!.enumProphylaxisMoringa;
      case Prophylaxis.BiomodulinT:
        return Messages.of(context)!.enumProphylaxisBiomodulinT;
      case Prophylaxis.VitaminC:
        return Messages.of(context)!.enumProphylaxisVitaminC;
      case Prophylaxis.Polivit:
        return Messages.of(context)!.enumProphylaxisPolivit;
      case Prophylaxis.Turmeric:
        return Messages.of(context)!.enumProphylaxisTurmeric;
      case Prophylaxis.Soverana2AndPlus:
        return Messages.of(context)!.enumProphylaxisSoverana2AndPlus;
      case Prophylaxis.Honey:
        return Messages.of(context)!.enumProphylaxisHoney;
      case Prophylaxis.VitaminA:
        return Messages.of(context)!.enumProphylaxisVitaminA;
      case Prophylaxis.Ginger:
        return Messages.of(context)!.enumProphylaxisGinger;
      case Prophylaxis.SoveranaPlus:
        return Messages.of(context)!.enumProphylaxisSoveranaPlus;
      case Prophylaxis.Abdala:
        return Messages.of(context)!.enumProphylaxisAbdala;
      case Prophylaxis.Covid19Previously:
        return Messages.of(context)!.enumProphylaxisCovid19Previously;
    }
  }
}

extension SexExtention on Sex {
  String visualName(BuildContext context) {
    switch (this) {
      case Sex.Female:
        return Messages.of(context)!.enumSexFemale;
      case Sex.Male:
        return Messages.of(context)!.enumSexMale;
      case Sex.Other:
        return Messages.of(context)!.enumSexOther;
    }
  }
}

extension SkinColorExtension on SkinColor {
  String visualName(BuildContext context) {
    switch (this) {
      case SkinColor.Black:
        return Messages.of(context)!.enumSkinColorBlack;
      case SkinColor.White:
        return Messages.of(context)!.enumSkinColorWhite;
      case SkinColor.Other:
        return Messages.of(context)!.enumSkinColorOther;
      case SkinColor.HalfBlood:
        return Messages.of(context)!.enumSkinColorHalfBlood;
    }
  }
}

extension BloodTypeExtention on BloodType {
  String visualName(BuildContext context) {
    switch (this) {
      case BloodType.Unknown:
        return Messages.of(context)!.enumBloodTypeUnknown;
      case BloodType.ABminus:
        return Messages.of(context)!.enumBloodTypeABminus;
      case BloodType.ABplus:
        return Messages.of(context)!.enumBloodTypeABplus;
      case BloodType.Aplus:
        return Messages.of(context)!.enumBloodTypeAplus;
      case BloodType.Aminus:
        return Messages.of(context)!.enumBloodTypeAminus;
      case BloodType.Bplus:
        return Messages.of(context)!.enumBloodTypeBplus;
      case BloodType.Bminus:
        return Messages.of(context)!.enumBloodTypeBminus;
      case BloodType.Oplus:
        return Messages.of(context)!.enumBloodTypeOplus;
      case BloodType.Ominus:
        return Messages.of(context)!.enumBloodTypeOminus;
    }
  }
}

extension BoolExtention on bool {
  String yesOrNo(BuildContext context) {
    return this ? 'Si' : 'No';
  }
}
