import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntidifferentiationCanonicalLaneLean.ConnectionCurvaturePackage

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure IndexTheoremCertificate (G : ConnectionCurvaturePackage) where
  ellipticOperator : Type u
  indexComputed : Prop
  curvatureIntegralFormula : Prop
  topologicalInvariantComputed : Prop
  indexFromCurvature : Prop
  ellipticOperatorComputed : ellipticOperator
  indexComputedClosed : indexComputed
  curvatureIntegralFormulaClosed : curvatureIntegralFormula
  topologicalInvariantComputedClosed : topologicalInvariantComputed
  indexFromCurvatureClosed : indexFromCurvature
  indexEvidence : ConnectionCurvatureEvidence G

def IndexTheoremCertificateClosed {G : ConnectionCurvaturePackage}
    (C : IndexTheoremCertificate G) : Prop :=
  C.indexComputed ∧ C.curvatureIntegralFormula ∧ C.topologicalInvariantComputed ∧ C.indexFromCurvature ∧ ConnectionCurvatureClosed G

theorem index_theorem_certificate_closed
    {G : ConnectionCurvaturePackage} (C : IndexTheoremCertificate G) :
    IndexTheoremCertificateClosed C := by
  exact And.intro C.indexComputedClosed
    (And.intro C.curvatureIntegralFormulaClosed
      (And.intro C.topologicalInvariantComputedClosed
        (And.intro C.indexFromCurvatureClosed
          (connection_curvature_closed_from_evidence G C.indexEvidence))))

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse