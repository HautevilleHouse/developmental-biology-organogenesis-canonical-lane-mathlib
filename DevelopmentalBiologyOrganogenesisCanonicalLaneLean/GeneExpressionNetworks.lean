import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  nodes : Nat
  edges : Nat
  topologyAcyclic : Prop
  regulatoryInteractions : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  topologyAcyclicClosed : G.topologyAcyclic
  regulatoryInteractionsClosed : G.regulatoryInteractions

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.topologyAcyclic ∧ G.regulatoryInteractions

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.topologyAcyclicClosed E.regulatoryInteractionsClosed

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse