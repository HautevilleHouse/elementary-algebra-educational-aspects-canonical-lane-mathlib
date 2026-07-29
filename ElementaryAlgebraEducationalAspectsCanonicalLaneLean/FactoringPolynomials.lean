import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.EquationSolving

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure FactoringPolynomialsPackage {E : AlgebraicExpressionsPackage}
    {S : EquationSolvingPackage E} where
  polynomialRing : Type
  factorSet : Type
  factorizationAlgorithm : Prop
  irreducibleCheck : Prop

structure FactoringPolynomialsEvidence {E : AlgebraicExpressionsPackage}
    {S : EquationSolvingPackage E} (F : FactoringPolynomialsPackage E S) where
  factorizationAlgorithmClosed : F.factorizationAlgorithm
  irreducibleCheckClosed : F.irreducibleCheck

def FactoringPolynomialsClosed {E : AlgebraicExpressionsPackage}
    {S : EquationSolvingPackage E} (F : FactoringPolynomialsPackage E S) : Prop :=
  F.factorizationAlgorithm ∧ F.irreducibleCheck

theorem factoring_polynomials_closed_from_evidence
    {E : AlgebraicExpressionsPackage} {S : EquationSolvingPackage E}
    (F : FactoringPolynomialsPackage E S) (Ev : FactoringPolynomialsEvidence F) :
    FactoringPolynomialsClosed F := by
  exact And.intro Ev.factorizationAlgorithmClosed Ev.irreducibleCheckClosed

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse