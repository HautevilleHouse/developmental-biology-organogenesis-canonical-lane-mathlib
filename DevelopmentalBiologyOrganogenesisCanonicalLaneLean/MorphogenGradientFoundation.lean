import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure MorphogenGradientFoundation where
  morphogenType : Type
  sourceLocalization : Prop
  gradientFormation : Prop
  targetCellResponse : Prop
  gradientClosed : Prop
  sourceLocalizationTerm : sourceLocalization
  gradientFormationTerm : gradientFormation
  targetCellResponseTerm : targetCellResponse
  gradientClosedTerm : gradientClosed

structure MorphogenGradientEvidence (M : MorphogenGradientFoundation) where
  sourceLocalizationClosed : M.sourceLocalization
  gradientFormationClosed : M.gradientFormation
  targetCellResponseClosed : M.targetCellResponse
  gradientClosedClosed : M.gradientClosed

def MorphogenGradientClosed (M : MorphogenGradientFoundation) : Prop :=
  M.sourceLocalization ∧ M.gradientFormation ∧ M.targetCellResponse ∧ M.gradientClosed

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientFoundation)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.sourceLocalizationClosed
    (And.intro E.gradientFormationClosed
      (And.intro E.targetCellResponseClosed E.gradientClosedClosed))

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse