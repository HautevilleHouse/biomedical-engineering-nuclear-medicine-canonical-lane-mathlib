import biomedicalEngineeringNuclearMedicineCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure AdmissibleClass where
  object : NuclearMedicineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NuclearMedicineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse