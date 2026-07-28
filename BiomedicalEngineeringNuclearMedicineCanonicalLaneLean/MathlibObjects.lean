import biomedicalEngineeringNuclearMedicineCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NuclearMedicineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NuclearMedicineAdmittedObject where
  space : NuclearMedicineSpace
  diagnosticContext : Prop
  survivalEndpoint : Prop
  conclusion : diagnosticContext ∧ survivalEndpoint

structure NuclearMedicineEndgameState where
  object : NuclearMedicineAdmittedObject

def NuclearMedicineWitnessClosed (O : NuclearMedicineAdmittedObject) : Prop :=
  O.diagnosticContext ∧ O.survivalEndpoint

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse