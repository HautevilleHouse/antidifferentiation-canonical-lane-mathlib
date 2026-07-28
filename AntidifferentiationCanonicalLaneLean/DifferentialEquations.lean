import canonicalLaneMathlib.AdmissibleClass
import AntidifferentiationCanonicalLaneLean.FundamentalTheorem

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure DifferentialEquationsPackage {P : FundamentalTheoremPackage} where
  odeExistence : Prop
  odeUniqueness : Prop
  picardLindelofTheorem : Prop
  solutionSpaceDimension : Nat
  linearODESolved : Prop

structure DifferentialEquationsEvidence {P : FundamentalTheoremPackage}
    (D : DifferentialEquationsPackage P) where
  odeExistenceClosed : D.odeExistence
  odeUniquenessClosed : D.odeUniqueness
  picardLindelofTheoremClosed : D.picardLindelofTheorem
  linearODESolvedClosed : D.linearODESolved

def DifferentialEquationsClosed {P : FundamentalTheoremPackage}
    (D : DifferentialEquationsPackage P) : Prop :=
  D.odeExistence ∧
  D.odeUniqueness ∧
  D.picardLindelofTheorem ∧
  D.linearODESolved

theorem differential_equations_closed_from_evidence {P : FundamentalTheoremPackage}
    (D : DifferentialEquationsPackage P) (E : DifferentialEquationsEvidence D) :
    DifferentialEquationsClosed D := by
  exact And.intro E.odeExistenceClosed
    (And.intro E.odeUniquenessClosed
      (And.intro E.picardLindelofTheoremClosed E.linearODESolvedClosed))

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse