import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure TeichmullerSpace where
  surface : Type u
  complexStructure : Type v
  deformationSpace : Prop
  mappingClassGroupAction : Prop
  quasiConformalMaps : Prop

structure TeichmullerSpaceEvidence (T : TeichmullerSpace) where
  deformationSpaceClosed : T.deformationSpace
  mappingClassGroupActionClosed : T.mappingClassGroupAction
  quasiConformalMapsClosed : T.quasiConformalMaps

def TeichmullerSpaceClosed (T : TeichmullerSpace) : Prop :=
  T.deformationSpace ∧ T.mappingClassGroupAction ∧ T.quasiConformalMaps

theorem teichmuller_space_closed_from_evidence (T : TeichmullerSpace) (E : TeichmullerSpaceEvidence T) : TeichmullerSpaceClosed T := by
  exact And.intro E.deformationSpaceClosed (And.intro E.mappingClassGroupActionClosed E.quasiConformalMapsClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse