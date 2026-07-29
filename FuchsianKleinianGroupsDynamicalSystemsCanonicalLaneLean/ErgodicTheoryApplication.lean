import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.GeodesicFlowDynamicalSystem

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure ErgodicTheoryApplicationPackage {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} {K : KleinianGroupLimitSetPackage G F}
    (D : GeodesicFlowDynamicalSystemPackage K) where
  ergodicityOfGeodesicFlow : Prop
  mixingOfGeodesicFlow : Prop
  equidistributionClosedGeodesics : Prop
  countingResult : Prop

structure ErgodicTheoryApplicationEvidence {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} {K : KleinianGroupLimitSetPackage G F}
    {D : GeodesicFlowDynamicalSystemPackage K} (E : ErgodicTheoryApplicationPackage D) where
  ergodicityOfGeodesicFlowClosed : E.ergodicityOfGeodesicFlow
  mixingOfGeodesicFlowClosed : E.mixingOfGeodesicFlow
  equidistributionClosedGeodesicsClosed : E.equidistributionClosedGeodesics
  countingResultClosed : E.countingResult

def ErgodicTheoryApplicationClosed {G : HyperbolicMetricPackage}
    {F : FuchsianGroupActionPackage G} {K : KleinianGroupLimitSetPackage G F}
    {D : GeodesicFlowDynamicalSystemPackage K} (E : ErgodicTheoryApplicationPackage D) : Prop :=
  E.ergodicityOfGeodesicFlow ∧ E.mixingOfGeodesicFlow ∧
  E.equidistributionClosedGeodesics ∧ E.countingResult

theorem ergodic_theory_application_closed_from_evidence
    {G : HyperbolicMetricPackage} {F : FuchsianGroupActionPackage G}
    {K : KleinianGroupLimitSetPackage G F} {D : GeodesicFlowDynamicalSystemPackage K}
    (E : ErgodicTheoryApplicationPackage D) (Ev : ErgodicTheoryApplicationEvidence E) :
    ErgodicTheoryApplicationClosed E := by
  exact And.intro Ev.ergodicityOfGeodesicFlowClosed
    (And.intro Ev.mixingOfGeodesicFlowClosed
      (And.intro Ev.equidistributionClosedGeodesicsClosed Ev.countingResultClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse