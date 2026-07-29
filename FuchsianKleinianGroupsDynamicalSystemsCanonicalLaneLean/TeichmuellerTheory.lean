import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure TeichmuellerSpacePackage where
  surface : Type u
  complexStructure : surface → Type v
  teichmuellerSpace : Type w
  markedRiemannSurface : Prop
  quasiconformalDeformation : Prop
  mappingClassGroupAction : Prop

structure TeichmuellerSpaceEvidence (T : TeichmuellerSpacePackage) where
  markedRiemannSurfaceClosed : T.markedRiemannSurface
  quasiconformalDeformationClosed : T.quasiconformalDeformation
  mappingClassGroupActionClosed : T.mappingClassGroupAction

def TeichmuellerSpaceClosed (T : TeichmuellerSpacePackage) : Prop :=
  T.markedRiemannSurface ∧ T.quasiconformalDeformation ∧ T.mappingClassGroupAction

theorem teichmueller_space_closed_from_evidence (T : TeichmuellerSpacePackage)
    (E : TeichmuellerSpaceEvidence T) : TeichmuellerSpaceClosed T := by
  exact And.intro E.markedRiemannSurfaceClosed
    (And.intro E.quasiconformalDeformationClosed E.mappingClassGroupActionClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
