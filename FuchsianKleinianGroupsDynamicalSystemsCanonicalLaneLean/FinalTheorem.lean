import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

def ConstrainedFuchsianKleinianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuchsian_kleinian_endgame (A : AdmissibleClass) : ConstrainedFuchsianKleinianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse