import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure LimbBudDevelopmentPackage where
  apicalEctodermalRidge : Prop
  zoneOfPolarizingActivity : Prop
  proximalDistalPatterning : Prop
  anteriorPosteriorPatterning : Prop
  interdigitalApoptosis : Prop

structure LimbBudDevelopmentEvidence (L : LimbBudDevelopmentPackage) where
  apicalEctodermalRidgeClosed : L.apicalEctodermalRidge
  zoneOfPolarizingActivityClosed : L.zoneOfPolarizingActivity
  proximalDistalPatterningClosed : L.proximalDistalPatterning
  anteriorPosteriorPatterningClosed : L.anteriorPosteriorPatterning
  interdigitalApoptosisClosed : L.interdigitalApoptosis

def LimbBudDevelopmentClosed (L : LimbBudDevelopmentPackage) : Prop :=
  L.apicalEctodermalRidge ∧ L.zoneOfPolarizingActivity ∧
  L.proximalDistalPatterning ∧ L.anteriorPosteriorPatterning ∧
  L.interdigitalApoptosis

theorem limb_bud_development_closed_from_evidence
    (L : LimbBudDevelopmentPackage) (E : LimbBudDevelopmentEvidence L) :
    LimbBudDevelopmentClosed L := by
  exact And.intro E.apicalEctodermalRidgeClosed
    (And.intro E.zoneOfPolarizingActivityClosed
      (And.intro E.proximalDistalPatterningClosed
        (And.intro E.anteriorPosteriorPatterningClosed
          E.interdigitalApoptosisClosed)))

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse