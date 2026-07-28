import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure PharmacokineticsPackage {C : CompartmentModel} where
  auc : ℝ
  clearance : ℝ
  halfLife : ℝ
  aucFormula : auc = C.initialDose / C.volumeOfDistribution / C.eliminationRate
  clearanceFormula : clearance = C.volumeOfDistribution * C.eliminationRate
  halfLifeFormula : halfLife = Real.log 2 / C.eliminationRate

structure PharmacokineticsEvidence {C : CompartmentModel} (P : PharmacokineticsPackage C) where
  aucFormulaClosed : P.aucFormula
  clearanceFormulaClosed : P.clearanceFormula
  halfLifeFormulaClosed : P.halfLifeFormula

def PharmacokineticsClosed {C : CompartmentModel} (P : PharmacokineticsPackage C) : Prop :=
  P.aucFormula ∧ P.clearanceFormula ∧ P.halfLifeFormula

theorem pharmacokinetics_closed_from_evidence {C : CompartmentModel} (P : PharmacokineticsPackage C) (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P :=
  And.intro E.aucFormulaClosed (And.intro E.clearanceFormulaClosed E.halfLifeFormulaClosed)

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse