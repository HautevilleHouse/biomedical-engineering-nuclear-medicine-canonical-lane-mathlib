import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure NuclearMedicineAdmittedObject where
  subject : Type
  tracerKinetics : Prop
  diagnosticInference : Prop
  survivalModel : Prop
  conclusion : tracerKinetics ∧ diagnosticInference ∧ survivalModel

structure AdmissibleClass where
  object : NuclearMedicineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (O : NuclearMedicineAdmittedObject) : Prop :=
  O.tracerKinetics ∧ O.diagnosticInference ∧ O.survivalModel

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse