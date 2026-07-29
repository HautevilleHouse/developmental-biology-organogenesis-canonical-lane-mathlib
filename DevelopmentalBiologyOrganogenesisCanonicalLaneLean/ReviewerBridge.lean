import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "ab12cd34ef56", present := true }]

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 1 := by
  rfl

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse