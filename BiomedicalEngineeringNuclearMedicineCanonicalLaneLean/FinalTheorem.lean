import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

def ConstrainedNuclearMedicineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ gateClosed A

theorem constrained_nuclear_medicine_endgame (A : AdmissibleClass) :
    ConstrainedNuclearMedicineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse