import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure CellFateDecisionPackage where
  cellType : String
  signalingPathway : String
  transcriptionFactorNetwork : String
  decisionIrreversible : Prop
  decisionRobust : Prop

structure CellFateDecisionEvidence (C : CellFateDecisionPackage) where
  decisionIrreversibleClosed : C.decisionIrreversible
  decisionRobustClosed : C.decisionRobust

def CellFateDecisionClosed (C : CellFateDecisionPackage) : Prop :=
  C.decisionIrreversible ∧ C.decisionRobust

theorem cell_fate_decision_closed_from_evidence
    (C : CellFateDecisionPackage) (E : CellFateDecisionEvidence C) :
    CellFateDecisionClosed C := by
  exact And.intro E.decisionIrreversibleClosed E.decisionRobustClosed

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse