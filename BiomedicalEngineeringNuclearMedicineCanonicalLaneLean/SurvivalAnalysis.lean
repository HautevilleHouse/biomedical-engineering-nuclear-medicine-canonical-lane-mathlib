import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringNuclearMedicineCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : ℝ → ℝ
  hazardNonnegative : ∀ t, hazardFunction t ≥ 0
  cumulativeHazard : ℝ → ℝ
  cumulativeHazardNonnegative : ∀ t, cumulativeHazard t ≥ 0
  survivalFunction : ℝ → ℝ
  survivalFunctionNonnegative : ∀ t, survivalFunction t ≥ 0
  survivalFunctionNonincreasing : ∀ s t, s ≤ t → survivalFunction s ≥ survivalFunction t

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  hazardNonnegativeClosed : S.hazardNonnegative
  cumulativeHazardNonnegativeClosed : S.cumulativeHazardNonnegative
  survivalFunctionNonnegativeClosed : S.survivalFunctionNonnegative
  survivalFunctionNonincreasingClosed : S.survivalFunctionNonincreasing

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.hazardNonnegative ∧ S.cumulativeHazardNonnegative ∧
  S.survivalFunctionNonnegative ∧ S.survivalFunctionNonincreasing

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.hazardNonnegativeClosed
    (And.intro E.cumulativeHazardNonnegativeClosed
      (And.intro E.survivalFunctionNonnegativeClosed E.survivalFunctionNonincreasingClosed))

end BiomedicalEngineeringNuclearMedicineCanonicalLaneLean
end HautevilleHouse