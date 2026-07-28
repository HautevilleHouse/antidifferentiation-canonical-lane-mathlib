import AntidifferentiationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse