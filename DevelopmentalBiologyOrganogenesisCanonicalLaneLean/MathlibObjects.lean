import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure OrganogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OrganogenesisAdmittedObject where
  space : OrganogenesisSpace
  developmentalProcess : Prop
  organFormation : Prop
  geneRegulatoryNetwork : Type
  networkTopology : TopologicalSpace geneRegulatoryNetwork
  conclusion : developmentalProcess ∧ organFormation

structure OrganogenesisEndgameState where
  object : OrganogenesisAdmittedObject

def OrganogenesisWitnessClosed (O : OrganogenesisAdmittedObject) : Prop :=
  O.developmentalProcess ∧ O.organFormation

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse