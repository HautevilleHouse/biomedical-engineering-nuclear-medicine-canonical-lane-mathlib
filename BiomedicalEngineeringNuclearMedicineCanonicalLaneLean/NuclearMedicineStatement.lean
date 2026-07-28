import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NuclearMedicineProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def nuclearMedicineProofObligation : NuclearMedicineProofObligation := {
  sourceKey := "nuclear-medicine-canonical-lane",
  theoremObject := "Biomedical Engineering Nuclear Medicine",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse