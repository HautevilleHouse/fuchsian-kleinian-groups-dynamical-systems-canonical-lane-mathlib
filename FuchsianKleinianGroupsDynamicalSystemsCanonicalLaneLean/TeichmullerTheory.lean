import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure TeichmullerTheoryPackage where
  teichmullerSpace : Type u
  moduliSpace : Type v
  quasiconformalMapping : Prop
  bersEmbedding : Prop
  earthquakeDeformation : Prop

structure TeichmullerTheoryEvidence (T : TeichmullerTheoryPackage) where
  quasiconformalMappingClosed : T.quasiconformalMapping
  bersEmbeddingClosed : T.bersEmbedding
  earthquakeDeformationClosed : T.earthquakeDeformation

def TeichmullerTheoryClosed (T : TeichmullerTheoryPackage) : Prop :=
  T.quasiconformalMapping ∧ T.bersEmbedding ∧ T.earthquakeDeformation

theorem teichmuller_theory_closed_from_evidence (T : TeichmullerTheoryPackage)
    (E : TeichmullerTheoryEvidence T) : TeichmullerTheoryClosed T := by
  exact And.intro E.quasiconformalMappingClosed
    (And.intro E.bersEmbeddingClosed E.earthquakeDeformationClosed)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse