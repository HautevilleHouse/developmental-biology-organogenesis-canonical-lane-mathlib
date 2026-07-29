import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure PrimitiveTranscriptomeNetwork where
  cellTypes : Type
  geneExpression : cellTypes -> cellTypes -> Prop
  signalingPathways : Prop
  temporalDynamics : Prop
  networkTopologyClosed : Prop
  signalingPathwaysTerm : signalingPathways
  temporalDynamicsTerm : temporalDynamics
  networkTopologyClosedTerm : networkTopologyClosed

structure PrimitiveTranscriptomeNetworkEvidence (N : PrimitiveTranscriptomeNetwork) where
  signalingPathwaysClosed : N.signalingPathways
  temporalDynamicsClosed : N.temporalDynamics
  networkTopologyClosedClosed : N.networkTopologyClosed

def PrimitiveTranscriptomeNetworkClosed (N : PrimitiveTranscriptomeNetwork) : Prop :=
  N.signalingPathways ∧ N.temporalDynamics ∧ N.networkTopologyClosed

theorem primitive_transcriptome_network_closed_from_evidence
    (N : PrimitiveTranscriptomeNetwork) (E : PrimitiveTranscriptomeNetworkEvidence N) :
    PrimitiveTranscriptomeNetworkClosed N := by
  exact And.intro E.signalingPathwaysClosed
    (And.intro E.temporalDynamicsClosed E.networkTopologyClosedClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse