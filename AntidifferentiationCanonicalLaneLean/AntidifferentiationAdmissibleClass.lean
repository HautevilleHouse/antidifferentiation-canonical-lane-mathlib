import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure AntidifferentiationAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  connection : Prop
  curvatureInvariants : Prop
  conclusion : smoothStructure ∧ connection ∧ curvatureInvariants

structure AdmissibleClass where
  object : AntidifferentiationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AntidifferentiationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse