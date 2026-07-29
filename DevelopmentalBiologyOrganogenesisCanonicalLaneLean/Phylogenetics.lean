import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesTree : Type u
  molecularClock : Prop
  evolutionaryDistance : Type v
  treeReconstruction : Prop
  bootstrapSupport : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  treeReconstructionClosed : P.treeReconstruction
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.treeReconstruction ∧ P.bootstrapSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.treeReconstructionClosed E.bootstrapSupportClosed)

end DevelopmentalBiologyOrganogenesisCanonicalLaneLean
end HautevilleHouse