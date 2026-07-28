import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure PharmacokineticEvidenceTerms (O : NuclearMedicineAdmittedObject) (P : CompartmentModelPackage O) where
  validRateConstants : Prop
  goodInitialCondition : Prop
  solutionMatchesData : Prop
  evidenceClosed : CompartmentModelEvidence O P
  evidenceClosedTerm : evidenceClosed

def PharmacokineticEvidenceTermsClosed (O : NuclearMedicineAdmittedObject) (P : CompartmentModelPackage O) (E : PharmacokineticEvidenceTerms O P) : Prop :=
  E.validRateConstants ∧ E.goodInitialCondition ∧ E.solutionMatchesData ∧ CompartmentModelEvidence O P

theorem pharmacokinetic_evidence_terms_closed (O : NuclearMedicineAdmittedObject) (P : CompartmentModelPackage O) (E : PharmacokineticEvidenceTerms O P) :
  PharmacokineticEvidenceTermsClosed O P E := by
  exact And.intro E.validRateConstants (And.intro E.goodInitialCondition (And.intro E.solutionMatchesData E.evidenceClosedTerm))

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse