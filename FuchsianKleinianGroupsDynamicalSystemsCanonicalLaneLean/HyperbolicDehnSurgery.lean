import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure HyperbolicDehnSurgeryPackage where
  cuspManifold : Type u
  fillingCoefficients : ℚ × ℚ
  hyperbolicStructure : Type v
  deformationSpace : Type w
  geometricallyFinite : Prop
  fillingRadiusShrinks : Prop

structure HyperbolicDehnSurgeryEvidence (H : HyperbolicDehnSurgeryPackage) where
  geometricallyFiniteClosed : H.geometricallyFinite
  fillingRadiusShrinksClosed : H.fillingRadiusShrinks

def HyperbolicDehnSurgeryClosed (H : HyperbolicDehnSurgeryPackage) : Prop :=
  H.geometricallyFinite ∧ H.fillingRadiusShrinks

theorem hyperbolic_dehn_surgery_closed_from_evidence (H : HyperbolicDehnSurgeryPackage)
    (E : HyperbolicDehnSurgeryEvidence H) : HyperbolicDehnSurgeryClosed H := by
  exact And.intro E.geometricallyFiniteClosed E.fillingRadiusShrinksClosed

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
