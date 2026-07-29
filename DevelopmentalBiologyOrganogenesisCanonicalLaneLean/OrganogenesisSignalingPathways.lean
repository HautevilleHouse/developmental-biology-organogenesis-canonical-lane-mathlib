import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure BMP_SignalingPathway where
  ligandType : Type u
  receptorType : Type v
  smadPhosphorylation : Prop
  transcriptionalTargets : Prop
  dorsoventralPatterning : Prop
  ligandTypeTerm : ligandType
  receptorTypeTerm : receptorType
  smadPhosphorylationTerm : smadPhosphorylation
  transcriptionalTargetsTerm : transcriptionalTargets
  dorsoventralPatterningTerm : dorsoventralPatterning

structure BMP_SignalingEvidence (B : BMP_SignalingPathway) where
  smadPhosphorylationClosed : B.smadPhosphorylation
  transcriptionalTargetsClosed : B.transcriptionalTargets
  dorsoventralPatterningClosed : B.dorsoventralPatterning

def BMP_SignalingClosed (B : BMP_SignalingPathway) : Prop :=
  B.smadPhosphorylation ∧ B.transcriptionalTargets ∧ B.dorsoventralPatterning

theorem bmp_signaling_closed_from_evidence (B : BMP_SignalingPathway)
    (E : BMP_SignalingEvidence B) : BMP_SignalingClosed B := by
  exact And.intro E.smadPhosphorylationClosed
    (And.intro E.transcriptionalTargetsClosed E.dorsoventralPatterningClosed)

structure Shh_SignalingPathway where
  ligandType : Type u
  receptorType : Type v
  gliTranscription : Prop
  gradientFormation : Prop
  somitePatterning : Prop
  limbBudOutgrowth : Prop
  ligandTypeTerm : ligandType
  receptorTypeTerm : receptorType
  gliTranscriptionTerm : gliTranscription
  gradientFormationTerm : gradientFormation
  somitePatterningTerm : somitePatterning
  limbBudOutgrowthTerm : limbBudOutgrowth

structure Shh_SignalingEvidence (S : Shh_SignalingPathway) where
  gliTranscriptionClosed : S.gliTranscription
  gradientFormationClosed : S.gradientFormation
  somitePatterningClosed : S.somitePatterning
  limbBudOutgrowthClosed : S.limbBudOutgrowth

def Shh_SignalingClosed (S : Shh_SignalingPathway) : Prop :=
  S.gliTranscription ∧ S.gradientFormation ∧ S.somitePatterning ∧ S.limbBudOutgrowth

theorem shh_signaling_closed_from_evidence (S : Shh_SignalingPathway)
    (E : Shh_SignalingEvidence S) : Shh_SignalingClosed S := by
  exact And.intro E.gliTranscriptionClosed
    (And.intro E.gradientFormationClosed
      (And.intro E.somitePatterningClosed E.limbBudOutgrowthClosed))

structure Wnt_SignalingPathway where
  ligandType : Type u
  receptorType : Type v
  betaCatenin : Prop
  tcfTranscription : Prop
  cellProliferation : Prop
  stemCellMaintenance : Prop
  ligandTypeTerm : ligandType
  receptorTypeTerm : receptorType
  betaCateninTerm : betaCatenin
  tcfTranscriptionTerm : tcfTranscription
  cellProliferationTerm : cellProliferation
  stemCellMaintenanceTerm : stemCellMaintenance

structure Wnt_SignalingEvidence (W : Wnt_SignalingPathway) where
  betaCateninClosed : W.betaCatenin
  tcfTranscriptionClosed : W.tcfTranscription
  cellProliferationClosed : W.cellProliferation
  stemCellMaintenanceClosed : W.stemCellMaintenance

def Wnt_SignalingClosed (W : Wnt_SignalingPathway) : Prop :=
  W.betaCatenin ∧ W.tcfTranscription ∧ W.cellProliferation ∧ W.stemCellMaintenance

theorem wnt_signaling_closed_from_evidence (W : Wnt_SignalingPathway)
    (E : Wnt_SignalingEvidence W) : Wnt_SignalingClosed W := by
  exact And.intro E.betaCateninClosed
    (And.intro E.tcfTranscriptionClosed
      (And.intro E.cellProliferationClosed E.stemCellMaintenanceClosed))

structure OrganogenesisSignalingAdmissibleClass where
  bmp : BMP_SignalingPathway
  shh : Shh_SignalingPathway
  wnt : Wnt_SignalingPathway
  bmpEvidence : BMP_SignalingEvidence bmp
  shhEvidence : Shh_SignalingEvidence shh
  wntEvidence : Wnt_SignalingEvidence wnt

def OrganogenesisSignalingClosed (A : OrganogenesisSignalingAdmissibleClass) : Prop :=
  BMP_SignalingClosed A.bmp ∧ Shh_SignalingClosed A.shh ∧ Wnt_SignalingClosed A.wnt

theorem organogenesis_signaling_closed_from_evidence
    (A : OrganogenesisSignalingAdmissibleClass) :
    OrganogenesisSignalingClosed A := by
  refine And.intro (bmp_signaling_closed_from_evidence A.bmp A.bmpEvidence)
    (And.intro (shh_signaling_closed_from_evidence A.shh A.shhEvidence)
      (wnt_signaling_closed_from_evidence A.wnt A.wntEvidence))

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse