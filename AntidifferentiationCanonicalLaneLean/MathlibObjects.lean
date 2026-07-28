import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure AntidifferentiationSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  differentiableStructure : Type v

structure AntidifferentiationAdmittedObject where
  space : AntidifferentiationSpace
  functionDefined : Prop
  integrable : Prop
  antiderivativeExists : Prop
  conclusion : antiderivativeExists

def AntidifferentiationWitnessClosed (O : AntidifferentiationAdmittedObject) : Prop :=
  O.antiderivativeExists

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse