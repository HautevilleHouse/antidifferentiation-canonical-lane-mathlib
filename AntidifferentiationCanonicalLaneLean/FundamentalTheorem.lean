import canonicalLaneMathlib.AdmissibleClass
import AntidifferentiationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure FundamentalTheoremPackage where
  domain : Type u
  codomain : Type v
  differentiableFunction : domain → codomain
  antiderivative : domain → codomain
  derivativeOfAntiderivativeEqualsFunction : Prop
  integralOfDerivativeEqualsChange : Prop
  fundamentalTheoremFirstPart : Prop
  fundamentalTheoremSecondPart : Prop

structure FundamentalTheoremEvidence (P : FundamentalTheoremPackage) where
  derivativeOfAntiderivativeEqualsFunctionClosed : P.derivativeOfAntiderivativeEqualsFunction
  integralOfDerivativeEqualsChangeClosed : P.integralOfDerivativeEqualsChange
  fundamentalTheoremFirstPartClosed : P.fundamentalTheoremFirstPart
  fundamentalTheoremSecondPartClosed : P.fundamentalTheoremSecondPart

def FundamentalTheoremClosed (P : FundamentalTheoremPackage) : Prop :=
  P.derivativeOfAntiderivativeEqualsFunction ∧
  P.integralOfDerivativeEqualsChange ∧
  P.fundamentalTheoremFirstPart ∧
  P.fundamentalTheoremSecondPart

theorem fundamental_theorem_closed_from_evidence (P : FundamentalTheoremPackage)
    (E : FundamentalTheoremEvidence P) : FundamentalTheoremClosed P := by
  exact And.intro E.derivativeOfAntiderivativeEqualsFunctionClosed
    (And.intro E.integralOfDerivativeEqualsChangeClosed
      (And.intro E.fundamentalTheoremFirstPartClosed E.fundamentalTheoremSecondPartClosed))

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse