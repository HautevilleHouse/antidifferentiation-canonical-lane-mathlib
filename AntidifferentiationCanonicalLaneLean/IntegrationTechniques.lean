import canonicalLaneMathlib.AdmissibleClass
import AntidifferentiationCanonicalLaneLean.FundamentalTheorem

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure IntegrationTechniquesPackage {P : FundamentalTheoremPackage} where
  substitutionRule : Prop
  integrationByParts : Prop
  partialFractions : Prop
  trigonometricSubstitution : Prop
  numericalApproximation : Prop

structure IntegrationTechniquesEvidence {P : FundamentalTheoremPackage}
    (I : IntegrationTechniquesPackage P) where
  substitutionRuleClosed : I.substitutionRule
  integrationByPartsClosed : I.integrationByParts
  partialFractionsClosed : I.partialFractions
  trigonometricSubstitutionClosed : I.trigonometricSubstitution
  numericalApproximationClosed : I.numericalApproximation

def IntegrationTechniquesClosed {P : FundamentalTheoremPackage}
    (I : IntegrationTechniquesPackage P) : Prop :=
  I.substitutionRule ∧
  I.integrationByParts ∧
  I.partialFractions ∧
  I.trigonometricSubstitution ∧
  I.numericalApproximation

theorem integration_techniques_closed_from_evidence {P : FundamentalTheoremPackage}
    (I : IntegrationTechniquesPackage P) (E : IntegrationTechniquesEvidence I) :
    IntegrationTechniquesClosed I := by
  exact And.intro E.substitutionRuleClosed
    (And.intro E.integrationByPartsClosed
      (And.intro E.partialFractionsClosed
        (And.intro E.trigonometricSubstitutionClosed E.numericalApproximationClosed)))

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse