import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure FuchsianGroupPackage where
  group : Type u
  groupOperation : group → group → group
  discreteSubgroupOfPSL2R : Prop
  orientationPreserving : Prop
  finiteCovolume : Prop
  cuspStructure : Prop

structure FuchsianGroupEvidence (F : FuchsianGroupPackage) where
  discreteSubgroupOfPSL2RClosed : F.discreteSubgroupOfPSL2R
  orientationPreservingClosed : F.orientationPreserving
  finiteCovolumeClosed : F.finiteCovolume
  cuspStructureClosed : F.cuspStructure

def FuchsianGroupClosed (F : FuchsianGroupPackage) : Prop :=
  F.discreteSubgroupOfPSL2R ∧ F.orientationPreserving ∧
  F.finiteCovolume ∧ F.cuspStructure

theorem fuchsian_group_closed_from_evidence (F : FuchsianGroupPackage)
    (E : FuchsianGroupEvidence F) : FuchsianGroupClosed F := by
  exact And.intro E.discreteSubgroupOfPSL2RClosed
    (And.intro E.orientationPreservingClosed
      (And.intro E.finiteCovolumeClosed E.cuspStructureClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse