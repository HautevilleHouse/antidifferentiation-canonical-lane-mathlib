import AntidifferentiationCanonicalLaneLean.CurvaturePackage

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure AntidifferentiationHolonomyPackage {C : AntidifferentiationCurvaturePackage} where
  holonomyGroup : Type u
  holonomyClosed : Prop

structure AntidifferentiationHolonomyEvidence {C : AntidifferentiationCurvaturePackage}
    (H : AntidifferentiationHolonomyPackage C) where
  holonomyClosedTerm : H.holonomyClosed

def AntidifferentiationHolonomyClosed {C : AntidifferentiationCurvaturePackage}
    (H : AntidifferentiationHolonomyPackage C) : Prop :=
  H.holonomyClosed

theorem antidifferentiation_holonomy_closed_from_evidence
    {C : AntidifferentiationCurvaturePackage} (H : AntidifferentiationHolonomyPackage C)
    (E : AntidifferentiationHolonomyEvidence H) : AntidifferentiationHolonomyClosed H := by
  exact E.holonomyClosedTerm

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse