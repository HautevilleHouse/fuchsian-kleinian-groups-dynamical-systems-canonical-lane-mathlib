import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure FuchsianGroupActionPackage where
  discreteSubgroup : Type u
  hyperbolicSpace : Type v
  actionMap : discreteSubgroup → hyperbolicSpace → hyperbolicSpace
  properlyDiscontinuous : Prop
  isometryAction : Prop
  discontinuityDomain : Prop

structure FuchsianGroupActionEvidence (F : FuchsianGroupActionPackage) where
  properlyDiscontinuousClosed : F.properlyDiscontinuous
  isometryActionClosed : F.isometryAction
  discontinuityDomainClosed : F.discontinuityDomain

def FuchsianGroupActionClosed (F : FuchsianGroupActionPackage) : Prop :=
  F.properlyDiscontinuous ∧ F.isometryAction ∧ F.discontinuityDomain

theorem fuchsian_group_action_closed_from_evidence (F : FuchsianGroupActionPackage)
    (E : FuchsianGroupActionEvidence F) : FuchsianGroupActionClosed F := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.isometryActionClosed E.discontinuityDomainClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
