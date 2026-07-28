import AntidifferentiationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

def ConstrainedAntidifferentiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem antidifferentiation_endgame (A : AdmissibleClass) :
    ConstrainedAntidifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse