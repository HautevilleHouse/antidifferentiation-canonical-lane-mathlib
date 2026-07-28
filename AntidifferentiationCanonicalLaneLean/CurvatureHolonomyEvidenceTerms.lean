import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntidifferentiationCanonicalLaneLean.ConnectionCurvaturePackage

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure CurvatureHolonomyEvidenceTerms {G : ConnectionCurvaturePackage}
    (C : CurvatureHolonomyCertificate G) where
  connectionFormComputed : C.connectionFormComputed
  curvatureFormComputed : C.curvatureFormComputed
  holonomyGroupComputed : C.holonomyGroupComputed
  structureEquationsSatisfied : C.structureEquationsSatisfied
  bot' : C.curvatureFormsExteriorDerivative
  curvatureClosed : ConnectionCurvatureClosed G

def CurvatureHolonomyCertificate.evidenceTerms {G : ConnectionCurvaturePackage}
    (C : CurvatureHolonomyCertificate G) : CurvatureHolonomyEvidenceTerms C := {
  connectionFormComputed := C.connectionFormComputedClosed
  curvatureFormComputed := C.curvatureFormComputedClosed
  holonomyGroupComputed := C.holonomyGroupComputedClosed
  structureEquationsSatisfied := C.structureEquationsSatisfiedClosed
  curvatureClosed := connection_curvature_closed_from_evidence G C.curvatureEvidence
}

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse