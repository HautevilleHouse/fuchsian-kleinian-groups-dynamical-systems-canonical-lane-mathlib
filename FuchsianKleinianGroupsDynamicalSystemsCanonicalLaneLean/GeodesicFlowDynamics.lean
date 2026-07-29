import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure GeodesicFlowDynamics where
  flowSpace : Type u
  flowMap : Type v
  mixing : Prop
  ergodicity : Prop
  entropyPositive : Prop

structure GeodesicFlowDynamicsEvidence (F : GeodesicFlowDynamics) where
  mixingClosed : F.mixing
  ergodicityClosed : F.ergodicity
  entropyPositiveClosed : F.entropyPositive

def GeodesicFlowDynamicsClosed (F : GeodesicFlowDynamics) : Prop :=
  F.mixing ∧ F.ergodicity ∧ F.entropyPositive

theorem geodesic_flow_dynamics_closed_from_evidence (F : GeodesicFlowDynamics) (E : GeodesicFlowDynamicsEvidence F) : GeodesicFlowDynamicsClosed F := by
  exact And.intro E.mixingClosed (And.intro E.ergodicityClosed E.entropyPositiveClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse