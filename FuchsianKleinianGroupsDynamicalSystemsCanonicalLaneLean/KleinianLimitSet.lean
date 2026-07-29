import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure KleinianLimitSetPackage where
  limitSet : Type u
  limitSetTopology : TopologicalSpace limitSet
  schottkyDecomposition : Prop
  kleinCombinatorialClassification : Prop
  hausdorffDimensionComputed : Prop
  limitDynamicsClosed : Prop

structure KleinianLimitSetEvidence (K : KleinianLimitSetPackage) where
  schottkyDecompositionClosed : K.schottkyDecomposition
  kleinCombinatorialClassificationClosed : K.kleinCombinatorialClassification
  hausdorffDimensionComputedClosed : K.hausdorffDimensionComputed
  limitDynamicsClosedClosed : K.limitDynamicsClosed

def KleinianLimitSetClosed (K : KleinianLimitSetPackage) : Prop :=
  K.schottkyDecomposition ∧ K.kleinCombinatorialClassification ∧
  K.hausdorffDimensionComputed ∧ K.limitDynamicsClosed

theorem kleinian_limit_set_closed_from_evidence (K : KleinianLimitSetPackage)
    (E : KleinianLimitSetEvidence K) : KleinianLimitSetClosed K := by
  exact And.intro E.schottkyDecompositionClosed
    (And.intro E.kleinCombinatorialClassificationClosed
      (And.intro E.hausdorffDimensionComputedClosed E.limitDynamicsClosedClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse