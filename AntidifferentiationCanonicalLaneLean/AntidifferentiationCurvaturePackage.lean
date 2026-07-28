import AntidifferentiationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure AntidifferentiationCurvaturePackage where
  curvatureTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  curvatureInvariantClosed : Prop

structure AntidifferentiationCurvatureEvidence (C : AntidifferentiationCurvaturePackage) where
  curvatureInvariantClosedTerm : C.curvatureInvariantClosed

def AntidifferentiationCurvatureClosed (C : AntidifferentiationCurvaturePackage) : Prop :=
  C.curvatureInvariantClosed

theorem antidifferentiation_curvature_closed_from_evidence
    (C : AntidifferentiationCurvaturePackage) (E : AntidifferentiationCurvatureEvidence C) :
    AntidifferentiationCurvatureClosed C := by
  exact E.curvatureInvariantClosedTerm

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse