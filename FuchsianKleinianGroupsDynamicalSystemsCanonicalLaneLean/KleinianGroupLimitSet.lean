import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure KleinianGroupLimitSetPackage where
  group : Type u
  actionOnSphere : group → (ℂ̅ → ℂ̅)
  limitSet : Set ℂ̅
  domainOfDiscontinuity : Set ℂ̅
  limitSetMinimal : Prop
  domainOpen : Prop

structure KleinianGroupLimitSetEvidence (K : KleinianGroupLimitSetPackage) where
  limitSetMinimalClosed : K.limitSetMinimal
  domainOpenClosed : K.domainOpen

def KleinianGroupLimitSetClosed (K : KleinianGroupLimitSetPackage) : Prop :=
  K.limitSetMinimal ∧ K.domainOpen

theorem kleinian_group_limit_set_closed_from_evidence (K : KleinianGroupLimitSetPackage)
    (E : KleinianGroupLimitSetEvidence K) : KleinianGroupLimitSetClosed K := by
  exact And.intro E.limitSetMinimalClosed E.domainOpenClosed

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
