import DevelopmentalBiologyOrganogenesisCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

def ConstrainedOrganogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_organogenesis_endgame (A : AdmissibleClass) :
    ConstrainedOrganogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse