import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Prop
  cisRegulatoryElements : Prop
  signalingFeedback : Prop
  chromatinRemodeling : Prop
  networkTopology : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  transcriptionFactorsClosed : G.transcriptionFactors
  cisRegulatoryElementsClosed : G.cisRegulatoryElements
  signalingFeedbackClosed : G.signalingFeedback
  chromatinRemodelingClosed : G.chromatinRemodeling
  networkTopologyClosed : G.networkTopology

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.transcriptionFactors ∧ G.cisRegulatoryElements ∧
  G.signalingFeedback ∧ G.chromatinRemodeling ∧ G.networkTopology

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G :=
  And.intro E.transcriptionFactorsClosed
    (And.intro E.cisRegulatoryElementsClosed
      (And.intro E.signalingFeedbackClosed
        (And.intro E.chromatinRemodelingClosed E.networkTopologyClosed)))

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse