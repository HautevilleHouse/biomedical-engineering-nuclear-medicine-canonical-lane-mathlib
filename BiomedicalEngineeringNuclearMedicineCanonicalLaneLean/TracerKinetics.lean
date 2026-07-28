import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure TracerKineticsPackage (C : CompartmentModelPackage) where
  inputFunction : Prop
  timeActivityCurves : Prop
  rateConstants : Prop
  modelFitting : Prop
  identifiability : Prop

structure TracerKineticsEvidence {C : CompartmentModelPackage} (T : TracerKineticsPackage C) where
  inputFunctionClosed : T.inputFunction
  timeActivityCurvesClosed : T.timeActivityCurves
  rateConstantsClosed : T.rateConstants
  modelFittingClosed : T.modelFitting
  identifiabilityClosed : T.identifiability

def TracerKineticsClosed {C : CompartmentModelPackage} (T : TracerKineticsPackage C) : Prop :=
  T.inputFunction ∧ T.timeActivityCurves ∧ T.rateConstants ∧ T.modelFitting ∧ T.identifiability

theorem tracer_kinetics_closed_from_evidence {C : CompartmentModelPackage} (T : TracerKineticsPackage C) (E : TracerKineticsEvidence T) :
    TracerKineticsClosed T := by
  exact And.intro E.inputFunctionClosed
    (And.intro E.timeActivityCurvesClosed
      (And.intro E.rateConstantsClosed
        (And.intro E.modelFittingClosed E.identifiabilityClosed)))

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse