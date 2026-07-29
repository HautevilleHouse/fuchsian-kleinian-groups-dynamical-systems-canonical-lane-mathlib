import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.KleinianGroupLimitSet

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure GeodesicFlowDynamicalSystemPackage {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} (K : KleinianGroupLimitSetPackage G F) where
  unitTangentBundle : Type u
  geodesicFlow : ℝ → unitTangentBundle → unitTangentBundle
  flowInvariantMeasure : Prop
  mixingProperties : Prop
  closedGeodesicsCounting : Prop

structure GeodesicFlowDynamicalSystemEvidence {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} {K : KleinianGroupLimitSetPackage G F}
    (D : GeodesicFlowDynamicalSystemPackage K) where
  flowInvariantMeasureClosed : D.flowInvariantMeasure
  mixingPropertiesClosed : D.mixingProperties
  closedGeodesicsCountingClosed : D.closedGeodesicsCounting

def GeodesicFlowDynamicalSystemClosed {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} {K : KleinianGroupLimitSetPackage G F}
    (D : GeodesicFlowDynamicalSystemPackage K) : Prop :=
  D.flowInvariantMeasure ∧ D.mixingProperties ∧ D.closedGeodesicsCounting

theorem geodesic_flow_dynamical_system_closed_from_evidence
    {G : HyperbolicMetricPackage} {F : FuchsianGroupActionPackage G}
    {K : KleinianGroupLimitSetPackage G F} (D : GeodesicFlowDynamicalSystemPackage K)
    (E : GeodesicFlowDynamicalSystemEvidence D) : GeodesicFlowDynamicalSystemClosed D := by
  exact And.intro E.flowInvariantMeasureClosed
    (And.intro E.mixingPropertiesClosed E.closedGeodesicsCountingClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse