import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : KleinianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  KleinianWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
