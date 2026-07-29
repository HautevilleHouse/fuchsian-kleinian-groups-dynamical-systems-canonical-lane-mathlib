import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure KleinianLimitSet where
  groupAction : Type u
  limitSet : Type v
  chaoticDynamics : Prop
  minimality : Prop
  selfSimilarity : Prop

structure KleinianLimitSetEvidence (L : KleinianLimitSet) where
  chaoticDynamicsClosed : L.chaoticDynamics
  minimalityClosed : L.minimality
  selfSimilarityClosed : L.selfSimilarity

def KleinianLimitSetClosed (L : KleinianLimitSet) : Prop :=
  L.chaoticDynamics ∧ L.minimality ∧ L.selfSimilarity

theorem kleinian_limit_set_closed_from_evidence (L : KleinianLimitSet) (E : KleinianLimitSetEvidence L) : KleinianLimitSetClosed L := by
  exact And.intro E.chaoticDynamicsClosed (And.intro E.minimalityClosed E.selfSimilarityClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse