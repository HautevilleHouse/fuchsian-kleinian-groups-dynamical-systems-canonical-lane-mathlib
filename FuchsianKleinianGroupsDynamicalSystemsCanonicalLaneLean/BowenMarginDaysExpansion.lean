import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

structure BowenMarginDaysPackage where
  conformalExpansion : Prop
  symbolicCoding : Prop
  spectrumOfTransfers : Prop
  dimensionSpectrum : Prop

structure BowenMarginDaysEvidence (B : BowenMarginDaysPackage) where
  conformalExpansionClosed : B.conformalExpansion
  symbolicCodingClosed : B.symbolicCoding
  spectrumOfTransfersClosed : B.spectrumOfTransfers
  dimensionSpectrumClosed : B.dimensionSpectrum

def BowenMarginDaysClosed (B : BowenMarginDaysPackage) : Prop :=
  B.conformalExpansion ∧ B.symbolicCoding ∧ B.spectrumOfTransfers ∧ B.dimensionSpectrum

theorem bowen_margin_days_closed_from_evidence (B : BowenMarginDaysPackage)
    (E : BowenMarginDaysEvidence B) : BowenMarginDaysClosed B := by
  exact And.intro E.conformalExpansionClosed
    (And.intro E.symbolicCodingClosed
      (And.intro E.spectrumOfTransfersClosed E.dimensionSpectrumClosed))

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
