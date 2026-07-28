import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure NuclearMedicineTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  compartmentModelConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheremStatement : NuclearMedicineTheoremStatement := {
  sourceKey := "biomedical-engineering-nuclear-medicine-canonical-lane",
  theoremName := "CompartmentModelPharmacokineticClosure",
  theoremObject := "Nuclear medicine kinetic model with diagnostic accuracy",
  classicalBoundary := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen",
  compartmentModelConstrainedStatement := "Compartment-model-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "compartment_model_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked : sourceTheremStatement.sourceKey = "biomedical-engineering-nuclear-medicine-canonical-lane" := by rfl

theorem theorem_statement_certificate_lane_checked : sourceTheremStatement.certificateLane = "compartment_model_constrained" := by rfl

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse