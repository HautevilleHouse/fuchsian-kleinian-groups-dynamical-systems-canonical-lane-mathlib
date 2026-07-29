import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure GeodesicFlowPackage where
  flow : Type u → Type v → Type w
  unitTangentBundle : Type x
  strongMixing : Prop
  ergodicity : Prop
  entropyPositive : Prop

structure GeodesicFlowEvidence (G : GeodesicFlowPackage) where
  strongMixingClosed : G.strongMixing
  ergodicityClosed : G.ergodicity
  entropyPositiveClosed : G.entropyPositive

def GeodesicFlowClosed (G : GeodesicFlowPackage) : Prop :=
  G.strongMixing ∧ G.ergodicity ∧ G.entropyPositive

theorem geodesic_flow_closed_from_evidence (G : GeodesicFlowPackage)
    (E : GeodesicFlowEvidence G) : GeodesicFlowClosed G := by
  exact And.intro E.strongMixingClosed
    (And.intro E.ergodicityClosed E.entropyPositiveClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse