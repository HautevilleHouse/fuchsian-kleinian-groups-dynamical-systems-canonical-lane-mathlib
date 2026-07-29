import FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KleinianGroupClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FuchsianKleinianGroupsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse