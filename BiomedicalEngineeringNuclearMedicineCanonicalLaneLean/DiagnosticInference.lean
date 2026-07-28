import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : ℝ
  specificity : ℝ
  sensitivityInRange : 0 ≤ sensitivity ∧ sensitivity ≤ 1
  specificityInRange : 0 ≤ specificity ∧ specificity ≤ 1
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ
  prevalence : ℝ
  prevalenceInRange : 0 ≤ prevalence ∧ prevalence ≤ 1

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivityInRangeClosed : D.sensitivityInRange
  specificityInRangeClosed : D.specificityInRange
  prevalenceInRangeClosed : D.prevalenceInRange

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivityInRange ∧ D.specificityInRange ∧ D.prevalenceInRange

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityInRangeClosed
    (And.intro E.specificityInRangeClosed E.prevalenceInRangeClosed)

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse