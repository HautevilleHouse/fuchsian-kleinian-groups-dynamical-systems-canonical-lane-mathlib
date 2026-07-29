import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure Hyperbolic3Manifold where
  manifold : Type u
  metric : Type v
  constantNegativeCurvature : Prop
  complete : Prop
  finiteVolume : Prop

structure Hyperbolic3ManifoldEvidence (M : Hyperbolic3Manifold) where
  constantNegativeCurvatureClosed : M.constantNegativeCurvature
  completeClosed : M.complete
  finiteVolumeClosed : M.finiteVolume

def Hyperbolic3ManifoldClosed (M : Hyperbolic3Manifold) : Prop :=
  M.constantNegativeCurvature ∧ M.complete ∧ M.finiteVolume

theorem hyperbolic_3_manifold_closed_from_evidence (M : Hyperbolic3Manifold) (E : Hyperbolic3ManifoldEvidence M) : Hyperbolic3ManifoldClosed M := by
  exact And.intro E.constantNegativeCurvatureClosed (And.intro E.completeClosed E.finiteVolumeClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse