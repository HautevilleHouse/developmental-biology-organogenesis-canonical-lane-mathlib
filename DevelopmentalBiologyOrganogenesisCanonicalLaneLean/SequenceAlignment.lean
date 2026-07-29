import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : Type u
  referenceSequence : Type v
  alignmentScore : Type w
  gapPenalty : Prop
  substitutionMatrix : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  gapPenaltyClosed : S.gapPenalty
  substitutionMatrixClosed : S.substitutionMatrix
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.gapPenalty ∧ S.substitutionMatrix ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.gapPenaltyClosed (And.intro E.substitutionMatrixClosed E.optimalAlignmentClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse