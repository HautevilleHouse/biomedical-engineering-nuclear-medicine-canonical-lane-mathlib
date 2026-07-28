import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  numCompartmentsPositive : numCompartments > 0
  transferRates : Matrix (Fin numCompartments) (Fin numCompartments) ℝ
  transferRatesNonnegative : ∀ i j, transferRates i j ≥ 0
  initialCondition : Vector ℝ (Fin numCompartments)
  initialConditionNonnegative : ∀ i, initialCondition i ≥ 0

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  numCompartmentsPositiveClosed : M.numCompartmentsPositive
  transferRatesNonnegativeClosed : M.transferRatesNonnegative
  initialConditionNonnegativeClosed : M.initialConditionNonnegative

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.numCompartmentsPositive ∧ M.transferRatesNonnegative ∧ M.initialConditionNonnegative

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.numCompartmentsPositiveClosed
    (And.intro E.transferRatesNonnegativeClosed E.initialConditionNonnegativeClosed)

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse