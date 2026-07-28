import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NuclearMedicineSpace where
  patientCohort : Type
  imagingModality : String
  tracer : String
  outcome : Prop

structure NuclearMedicineAdmittedObject where
  space : NuclearMedicineSpace
  validTracerKinetics : Prop
  diagnosticPerformance : Prop
  conclusion : diagnosticPerformance

def NuclearMedicineWitnessClosed (O : NuclearMedicineAdmittedObject) : Prop :=
  O.diagnosticPerformance

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse