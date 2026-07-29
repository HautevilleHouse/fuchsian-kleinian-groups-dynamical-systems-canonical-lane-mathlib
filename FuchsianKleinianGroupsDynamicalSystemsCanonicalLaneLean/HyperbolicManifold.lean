import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure HyperbolicManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  hyperbolicMetric : Type v
  constantNegativeCurvature : Prop
  completeRiemannian : Prop
  coveringSpace : Prop

structure HyperbolicManifoldEvidence (H : HyperbolicManifoldPackage) where
  constantNegativeCurvatureClosed : H.constantNegativeCurvature
  completeRiemannianClosed : H.completeRiemannian
  coveringSpaceClosed : H.coveringSpace

def HyperbolicManifoldClosed (H : HyperbolicManifoldPackage) : Prop :=
  H.constantNegativeCurvature ∧ H.completeRiemannian ∧ H.coveringSpace

theorem hyperbolic_manifold_closed_from_evidence (H : HyperbolicManifoldPackage)
    (E : HyperbolicManifoldEvidence H) : HyperbolicManifoldClosed H := by
  exact And.intro E.constantNegativeCurvatureClosed
    (And.intro E.completeRiemannianClosed E.coveringSpaceClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse