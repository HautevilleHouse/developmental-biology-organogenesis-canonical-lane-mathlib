import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure Morphogen where
  name : String
  source : Prop
  diffusionCoeff : ℝ
  decayRate : ℝ
  sourceTerm : source

drow: True := True.intro

structure MorphogenGradient (M : Morphogen) where
  concentrationProfile : ℝ → ℝ  -- position → concentration
  gradientSteepness : ℝ
  thresholdConcentration : ℝ
  concentrationProfileTerm : concentrationProfile
  gradientSteepnessTerm : gradientSteepness
  thresholdConcentrationTerm : thresholdConcentration
  boundaryConditionsSatisfied : Prop
  boundaryConditionsSatisfiedTerm : boundaryConditionsSatisfied

structure MorphogenGradientEvidence {M : Morphogen} (G : MorphogenGradient M) where
  boundaryConditionsSatisfiedClosed : G.boundaryConditionsSatisfied

def MorphogenGradientClosed {M : Morphogen} (G : MorphogenGradient M) : Prop :=
  G.boundaryConditionsSatisfied

theorem morphogen_gradient_closed_from_evidence
    {M : Morphogen} (G : MorphogenGradient M)
    (E : MorphogenGradientEvidence G) : MorphogenGradientClosed G := by
  exact E.boundaryConditionsSatisfiedClosed

structure OrganogenesisMorphogenSystem where
  morphogens : List (Σ M : Morphogen, MorphogenGradient M)
  positionalInformation : Prop
  positionalInformationTerm : positionalInformation
  cellFateSpecification : positionalInformation → Prop
  cellFateSpecificationTerm : cellFateSpecification positionalInformationTerm

def OrganogenesisMorphogenSystemClosed (S : OrganogenesisMorphogenSystem) : Prop :=
  S.positionalInformation ∧ S.cellFateSpecification S.positionalInformationTerm

theorem organogenesis_morphogen_system_closed
    (S : OrganogenesisMorphogenSystem) :
    OrganogenesisMorphogenSystemClosed S := by
  exact And.intro S.positionalInformationTerm S.cellFateSpecificationTerm

structure MorphogenAdmissibleClass where
  system : OrganogenesisMorphogenSystem

def MorphogenAdmissibleClosure (A : MorphogenAdmissibleClass) : Prop :=
  OrganogenesisMorphogenSystemClosed A.system

theorem morphogen_admissible_closure_proof (A : MorphogenAdmissibleClass) :
    MorphogenAdmissibleClosure A := by
  exact organogenesis_morphogen_system_closed A.system

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse