import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure SomiteSegmentationPackage where
  segmentationClock : String
  somitogenesisProgress : Prop
  rostralCaudalPolarity : Prop
  segmentNumber : ℕ
  periodRegular : Prop

structure SomiteSegmentationEvidence (S : SomiteSegmentationPackage) where
  somitogenesisProgressClosed : S.somitogenesisProgress
  rostralCaudalPolarityClosed : S.rostralCaudalPolarity
  periodRegularClosed : S.periodRegular

def SomiteSegmentationClosed (S : SomiteSegmentationPackage) : Prop :=
  S.somitogenesisProgress ∧ S.rostralCaudalPolarity ∧ S.periodRegular

theorem somite_segmentation_closed_from_evidence
    (S : SomiteSegmentationPackage) (E : SomiteSegmentationEvidence S) :
    SomiteSegmentationClosed S := by
  exact And.intro E.somitogenesisProgressClosed
    (And.intro E.rostralCaudalPolarityClosed E.periodRegularClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse