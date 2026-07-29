import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure TissuePatterningPackage where
  cellFateSpecification : Prop
  spatialOrganization : Prop
  boundaryFormation : Prop
  tissueMorphogenesis : Prop
  organBudFormation : Prop

structure TissuePatterningEvidence (T : TissuePatterningPackage) where
  cellFateSpecificationClosed : T.cellFateSpecification
  spatialOrganizationClosed : T.spatialOrganization
  boundaryFormationClosed : T.boundaryFormation
  tissueMorphogenesisClosed : T.tissueMorphogenesis
  organBudFormationClosed : T.organBudFormation

def TissuePatterningClosed (T : TissuePatterningPackage) : Prop :=
  T.cellFateSpecification ∧ T.spatialOrganization ∧
  T.boundaryFormation ∧ T.tissueMorphogenesis ∧ T.organBudFormation

theorem tissue_patterning_closed_from_evidence
    (T : TissuePatterningPackage) (E : TissuePatterningEvidence T) :
    TissuePatterningClosed T :=
  And.intro E.cellFateSpecificationClosed
    (And.intro E.spatialOrganizationClosed
      (And.intro E.boundaryFormationClosed
        (And.intro E.tissueMorphogenesisClosed E.organBudFormationClosed)))

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse