import canonicalLaneMathlib.AdmissibleClass
import AntidifferentiationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

def ConstrainedAntidifferentiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_antidifferentiation_endgame (A : AdmissibleClass) :
    ConstrainedAntidifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse