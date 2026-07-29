import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure Organism where
  carrier : Type u

structure MorphogenField where
  concentration : Organism → Real
  diffusionCoefficient : Real
  decayRate : Real

structure OrganogenesisAdmittedObject where
  organism : Organism
  morphogen : MorphogenField
  expressionState : Prop
  conclusion : expressionState

structure GeneRegulatoryNetwork where
  genes : List String
  interactions : Prop
  stableState : Prop

structure AdmissibleClass where
  object : OrganogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OrganogenesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def OrganogenesisWitnessClosed (O : OrganogenesisAdmittedObject) : Prop :=
  O.expressionState

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse