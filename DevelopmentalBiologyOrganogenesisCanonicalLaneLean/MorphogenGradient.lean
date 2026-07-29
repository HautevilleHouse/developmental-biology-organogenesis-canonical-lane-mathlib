import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : String
  sourceRegion : String
  diffusionCoefficient : ℝ
  decayRate : ℝ
  gradientProfile : String → ℝ
  gradientStable : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientStableClosed : M.gradientStable

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientStable

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact E.gradientStableClosed

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse