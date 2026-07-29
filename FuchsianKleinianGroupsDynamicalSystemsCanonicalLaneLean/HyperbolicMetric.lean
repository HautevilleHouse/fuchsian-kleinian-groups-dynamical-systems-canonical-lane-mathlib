import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure HyperbolicMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  constantNegativeCurvature : Prop
  completeMetric : Prop
  conformalBoundary : Prop

structure HyperbolicMetricEvidence (G : HyperbolicMetricPackage) where
  constantNegativeCurvatureClosed : G.constantNegativeCurvature
  completeMetricClosed : G.completeMetric
  conformalBoundaryClosed : G.conformalBoundary

def HyperbolicMetricClosed (G : HyperbolicMetricPackage) : Prop :=
  G.constantNegativeCurvature ∧ G.completeMetric ∧ G.conformalBoundary

theorem hyperbolic_metric_closed_from_evidence
    (G : HyperbolicMetricPackage) (E : HyperbolicMetricEvidence G) :
    HyperbolicMetricClosed G := by
  exact And.intro E.constantNegativeCurvatureClosed
    (And.intro E.completeMetricClosed E.conformalBoundaryClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse