import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure FuchsianGroupRepresentation where
  group : Type u
  action : Type v
  discreteSubgroup : Prop
  orientationPreserving : Prop
  translationsOnly : Prop

structure FuchsianGroupEvidence (G : FuchsianGroupRepresentation) where
  discreteSubgroupClosed : G.discreteSubgroup
  orientationPreservingClosed : G.orientationPreserving
  translationsOnlyClosed : G.translationsOnly

def FuchsianGroupClosed (G : FuchsianGroupRepresentation) : Prop :=
  G.discreteSubgroup ∧ G.orientationPreserving ∧ G.translationsOnly

theorem fuchsian_group_closed_from_evidence (G : FuchsianGroupRepresentation) (E : FuchsianGroupEvidence G) : FuchsianGroupClosed G := by
  exact And.intro E.discreteSubgroupClosed (And.intro E.orientationPreservingClosed E.translationsOnlyClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse