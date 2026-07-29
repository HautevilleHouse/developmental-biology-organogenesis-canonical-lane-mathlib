import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure CellFateCommitmentPackage where
  progenitorState : Type
  differentiatedState : Type
  commitmentSignals : Prop
  epigeneticLandscape : Prop
  lineageRestriction : Prop
  commitmentSignalsTerm : commitmentSignals
  epigeneticLandscapeTerm : epigeneticLandscape
  lineageRestrictionTerm : lineageRestriction

structure CellFateCommitmentEvidence (C : CellFateCommitmentPackage) where
  commitmentSignalsClosed : C.commitmentSignals
  epigeneticLandscapeClosed : C.epigeneticLandscape
  lineageRestrictionClosed : C.lineageRestriction

def CellFateCommitmentClosed (C : CellFateCommitmentPackage) : Prop :=
  C.commitmentSignals ∧ C.epigeneticLandscape ∧ C.lineageRestriction

theorem cell_fate_commitment_closed_from_evidence (C : CellFateCommitmentPackage)
    (E : CellFateCommitmentEvidence C) : CellFateCommitmentClosed C := by
  exact And.intro E.commitmentSignalsClosed
    (And.intro E.epigeneticLandscapeClosed E.lineageRestrictionClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse