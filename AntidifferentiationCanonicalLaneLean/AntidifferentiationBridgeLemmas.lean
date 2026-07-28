import AntidifferentiationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AntidifferentiationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse