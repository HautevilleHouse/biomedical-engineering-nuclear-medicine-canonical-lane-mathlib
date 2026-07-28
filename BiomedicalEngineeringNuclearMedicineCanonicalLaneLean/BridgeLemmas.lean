import BiomedicalEngineeringNuclearMedicineCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A.object := by
  exact A.object.conclusion

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse