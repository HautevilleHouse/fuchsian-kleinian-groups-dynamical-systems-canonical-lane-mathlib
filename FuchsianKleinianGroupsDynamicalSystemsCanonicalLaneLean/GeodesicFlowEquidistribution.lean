import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure GeodesicFlowEquidistributionPackage where
  mixingProperties : Prop
  equidistributionGaps : Prop
  ratnerTypeClassification : Prop
  quantitativeMixing : Prop

structure GeodesicFlowEquidistributionEvidence (G : GeodesicFlowEquidistributionPackage) where
  mixingPropertiesClosed : G.mixingProperties
  equidistributionGapsClosed : G.equidistributionGaps
  ratnerTypeClassificationClosed : G.ratnerTypeClassification
  quantitativeMixingClosed : G.quantitativeMixing

def GeodesicFlowEquidistributionClosed (G : GeodesicFlowEquidistributionPackage) : Prop :=
  G.mixingProperties ∧ G.equidistributionGaps ∧ G.ratnerTypeClassification ∧ G.quantitativeMixing

theorem geodesic_flow_equidistribution_closed_from_evidence (G : GeodesicFlowEquidistributionPackage)
    (E : GeodesicFlowEquidistributionEvidence G) : GeodesicFlowEquidistributionClosed G := by
  exact And.intro E.mixingPropertiesClosed
    (And.intro E.equidistributionGapsClosed
      (And.intro E.ratnerTypeClassificationClosed E.quantitativeMixingClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
