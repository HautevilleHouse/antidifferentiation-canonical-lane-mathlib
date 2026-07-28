import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntidifferentiationCanonicalLaneLean

structure ConnectionCurvaturePackage where
  manifold : Type u
  vectorBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  holonomyGroup : Type y
  connectionDefined : Prop
  curvatureSatisfiesStructureEquations : Prop
  holonomyInvariant : Prop

structure ConnectionCurvatureEvidence (G : ConnectionCurvaturePackage) where
  connectionDefinedClosed : G.connectionDefined
  curvatureSatisfiesStructureEquationsClosed : G.curvatureSatisfiesStructureEquations
  holonomyInvariantClosed : G.holonomyInvariant

def ConnectionCurvatureClosed (G : ConnectionCurvaturePackage) : Prop :=
  G.connectionDefined ∧ G.curvatureSatisfiesStructureEquations ∧ G.holonomyInvariant

theorem connection_curvature_closed_from_evidence
    (G : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence G) :
    ConnectionCurvatureClosed G := by
  exact And.intro E.connectionDefinedClosed
    (And.intro E.curvatureSatisfiesStructureEquationsClosed E.holonomyInvariantClosed)

end AntidifferentiationCanonicalLaneLean
end HautevilleHouse