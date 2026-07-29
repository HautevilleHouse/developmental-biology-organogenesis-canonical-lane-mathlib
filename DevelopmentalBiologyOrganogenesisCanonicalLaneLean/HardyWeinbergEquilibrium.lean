import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure HardyWeinbergPackage where
  populationAlleleFrequencies : Type u
  genotypeFrequencies : Type v
  equilibriumCondition : Prop
  randomMating : Prop
  noEvolutionaryForces : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  randomMatingClosed : H.randomMating
  noEvolutionaryForcesClosed : H.noEvolutionaryForces

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMating ∧ H.noEvolutionaryForces

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.randomMatingClosed E.noEvolutionaryForcesClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse