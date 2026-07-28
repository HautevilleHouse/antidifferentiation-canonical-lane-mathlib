import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AntidifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure AntidifferentiationObject where
  space : AntidifferentiationSpace
  connection : Type
  curvature : Type
  holonomy : Type
  integralFormula : Prop
  conclusion : integralFormula

structure AntidifferentiationEndgameState where
  object : AntidifferentiationObject

def AntidifferentiationWitnessClosed (O : AntidifferentiationObject) : Prop :=
  O.integralFormula

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse