import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure LimitSetHausdorffDimensionPackage where
  kleinianGroup : Type u
  limitSet : Set ℂ̅
  hausdorffDimension : ℝ
  dimensionComputed : Prop
  criticalExponentBound : Prop
  pattersonSullivanMeasure : Type v

structure LimitSetHausdorffDimensionEvidence (L : LimitSetHausdorffDimensionPackage) where
  dimensionComputedClosed : L.dimensionComputed
  criticalExponentBoundClosed : L.criticalExponentBound

def LimitSetHausdorffDimensionClosed (L : LimitSetHausdorffDimensionPackage) : Prop :=
  L.dimensionComputed ∧ L.criticalExponentBound

theorem limit_set_hausdorff_dimension_closed_from_evidence (L : LimitSetHausdorffDimensionPackage)
    (E : LimitSetHausdorffDimensionEvidence L) : LimitSetHausdorffDimensionClosed L := by
  exact And.intro E.dimensionComputedClosed E.criticalExponentBoundClosed

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
