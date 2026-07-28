import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.NuclearMedicineStatement
import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.PharmacokineticEvidenceTerms

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure DiagnosticInferenceCertificate (O : NuclearMedicineAdmittedObject) where
  truePositiveRate : Prop
  falsePositiveRate : Prop
  rocCurveArea : Prop
  inferenceClosed : Prop
  evidence : PharmacokineticEvidenceTerms O (CompartmentModelPackage.mk 1 (λ _ => ℝ) (λ _ => ℝ) True)

def DiagnosticInferenceCertificateClosed (O : NuclearMedicineAdmittedObject) (C : DiagnosticInferenceCertificate O) : Prop :=
  C.truePositiveRate ∧ C.falsePositiveRate ∧ C.rocCurveArea ∧ C.inferenceClosed

theorem diagnostic_inference_certificate_closed (O : NuclearMedicineAdmittedObject) (C : DiagnosticInferenceCertificate O) :
  DiagnosticInferenceCertificateClosed O C := by
  exact And.intro C.truePositiveRate (And.intro C.falsePositiveRate (And.intro C.rocCurveArea C.inferenceClosed))

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse