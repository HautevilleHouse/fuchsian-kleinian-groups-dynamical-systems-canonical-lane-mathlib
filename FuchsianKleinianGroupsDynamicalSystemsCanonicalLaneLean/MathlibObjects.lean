import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure KleinianSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : KleinianSpace
  hyperbolicStructure : Prop
  limitSet : Prop
  ergodicProperties : Prop
  conclusion : ergodicProperties

structure FuchsianKleinianEndgameState where
  object : AdmittedObject

def KleinianGroupClosed (O : AdmittedObject) : Prop :=
  O.ergodicProperties

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse