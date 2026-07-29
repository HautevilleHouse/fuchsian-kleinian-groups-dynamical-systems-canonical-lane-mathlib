import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure ThermodynamicFormalismPackage where
  pressureFunction : Prop
  equilibriumStates : Prop
  gibbsMeasures : Prop
  variationalPrinciple : Prop

structure ThermodynamicFormalismEvidence (T : ThermodynamicFormalismPackage) where
  pressureFunctionClosed : T.pressureFunction
  equilibriumStatesClosed : T.equilibriumStates
  gibbsMeasuresClosed : T.gibbsMeasures
  variationalPrincipleClosed : T.variationalPrinciple

def ThermodynamicFormalismClosed (T : ThermodynamicFormalismPackage) : Prop :=
  T.pressureFunction ∧ T.equilibriumStates ∧ T.gibbsMeasures ∧ T.variationalPrinciple

theorem thermodynamic_formalism_closed_from_evidence (T : ThermodynamicFormalismPackage)
    (E : ThermodynamicFormalismEvidence T) : ThermodynamicFormalismClosed T := by
  exact And.intro E.pressureFunctionClosed
    (And.intro E.equilibriumStatesClosed
      (And.intro E.gibbsMeasuresClosed E.variationalPrincipleClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
