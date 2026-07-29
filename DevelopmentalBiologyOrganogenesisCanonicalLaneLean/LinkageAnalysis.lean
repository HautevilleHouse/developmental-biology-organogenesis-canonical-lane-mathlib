import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Type u
  lodScore : Type v
  geneticMap : Type w
  linkageEvidence : Prop
  recombinationMeasured : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEvidenceClosed : L.linkageEvidence
  recombinationMeasuredClosed : L.recombinationMeasured

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEvidence ∧ L.recombinationMeasured

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEvidenceClosed E.recombinationMeasuredClosed

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse