import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure GeneRegulatoryNetworkCore where
  transcriptionFactors : Type
  targetGenes : Type
  regulatoryInteractions : Prop
  feedbackLoops : Prop
  networkDynamics : Prop
  regulatoryInteractionsTerm : regulatoryInteractions
  feedbackLoopsTerm : feedbackLoops
  networkDynamicsTerm : networkDynamics

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkCore) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  feedbackLoopsClosed : G.feedbackLoops
  networkDynamicsClosed : G.networkDynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkCore) : Prop :=
  G.regulatoryInteractions ∧ G.feedbackLoops ∧ G.networkDynamics

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkCore)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.feedbackLoopsClosed E.networkDynamicsClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse