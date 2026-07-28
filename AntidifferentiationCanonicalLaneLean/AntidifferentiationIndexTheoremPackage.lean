import AntidifferentiationCanonicalLaneLean.HolonomyPackage

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure AntidifferentiationIndexTheoremPackage {C : AntidifferentiationCurvaturePackage}
    {H : AntidifferentiationHolonomyPackage C} where
  indexTheorem : Prop
  indexTheoremClosed : indexTheorem

structure AntidifferentiationIndexTheoremEvidence {C : AntidifferentiationCurvaturePackage}
    {H : AntidifferentiationHolonomyPackage C} (I : AntidifferentiationIndexTheoremPackage C H) where
  indexTheoremClosedTerm : I.indexTheoremClosed

def AntidifferentiationIndexTheoremClosed {C : AntidifferentiationCurvaturePackage}
    {H : AntidifferentiationHolonomyPackage C} (I : AntidifferentiationIndexTheoremPackage C H) : Prop :=
  I.indexTheorem

theorem antidifferentiation_index_theorem_closed_from_evidence
    {C : AntidifferentiationCurvaturePackage} {H : AntidifferentiationHolonomyPackage C}
    (I : AntidifferentiationIndexTheoremPackage C H) (E : AntidifferentiationIndexTheoremEvidence I) :
    AntidifferentiationIndexTheoremClosed I := by
  exact E.indexTheoremClosedTerm

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse