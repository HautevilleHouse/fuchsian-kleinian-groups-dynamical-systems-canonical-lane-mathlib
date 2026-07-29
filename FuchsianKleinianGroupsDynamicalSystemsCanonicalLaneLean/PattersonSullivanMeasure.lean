import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure PattersonSullivanMeasurePackage where
  measureConstruction : Type u
  conformalDensity : Prop
  thermodynamicFormalism : Prop
  dimensionFormula : Prop

structure PattersonSullivanMeasureEvidence (P : PattersonSullivanMeasurePackage) where
  measureConstructionClosed : P.measureConstruction
  conformalDensityClosed : P.conformalDensity
  thermodynamicFormalismClosed : P.thermodynamicFormalism
  dimensionFormulaClosed : P.dimensionFormula

def PattersonSullivanMeasureClosed (P : PattersonSullivanMeasurePackage) : Prop :=
  P.measureConstruction ∧ P.conformalDensity ∧ P.thermodynamicFormalism ∧ P.dimensionFormula

theorem patterson_sullivan_measure_closed_from_evidence (P : PattersonSullivanMeasurePackage)
    (E : PattersonSullivanMeasureEvidence P) : PattersonSullivanMeasureClosed P := by
  exact And.intro E.measureConstructionClosed
    (And.intro E.conformalDensityClosed
      (And.intro E.thermodynamicFormalismClosed E.dimensionFormulaClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
