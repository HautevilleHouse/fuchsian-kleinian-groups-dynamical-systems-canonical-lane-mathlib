import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure KleinianLimitSetPackage where
  limitSet : Type u
  hausdorffDimension : Prop
  ergodicProperties : Prop
  geodeticFlowRecurrence : Prop

structure KleinianLimitSetEvidence (K : KleinianLimitSetPackage) where
  hausdorffDimensionClosed : K.hausdorffDimension
  ergodicPropertiesClosed : K.ergodicProperties
  geodeticFlowRecurrenceClosed : K.geodeticFlowRecurrence

def KleinianLimitSetClosed (K : KleinianLimitSetPackage) : Prop :=
  K.hausdorffDimension ∧ K.ergodicProperties ∧ K.geodeticFlowRecurrence

theorem kleinian_limit_set_closed_from_evidence (K : KleinianLimitSetPackage)
    (E : KleinianLimitSetEvidence K) : KleinianLimitSetClosed K := by
  exact And.intro E.hausdorffDimensionClosed
    (And.intro E.ergodicPropertiesClosed E.geodeticFlowRecurrenceClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
