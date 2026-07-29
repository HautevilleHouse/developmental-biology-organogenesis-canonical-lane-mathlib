import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def developmentalProjection : Projection OrganogenesisEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem developmental_projection_idempotent (x : OrganogenesisEndgameState) :
    developmentalProjection.toFun (developmentalProjection.toFun x) = developmentalProjection.toFun x := by
  exact developmentalProjection.idempotent x

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse