import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.AlgebraicExpressions

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure EquationSolvingPackage (E : AlgebraicExpressionsPackage) where
  equationType : Type
  solutionSet : Type
  solvingAlgorithm : Prop
  solutionVerification : Prop

structure EquationSolvingEvidence {E : AlgebraicExpressionsPackage}
    (S : EquationSolvingPackage E) where
  solvingAlgorithmClosed : S.solvingAlgorithm
  solutionVerificationClosed : S.solutionVerification

def EquationSolvingClosed {E : AlgebraicExpressionsPackage}
    (S : EquationSolvingPackage E) : Prop :=
  S.solvingAlgorithm ∧ S.solutionVerification

theorem equation_solving_closed_from_evidence
    {E : AlgebraicExpressionsPackage} (S : EquationSolvingPackage E)
    (Ev : EquationSolvingEvidence S) : EquationSolvingClosed S := by
  exact And.intro Ev.solvingAlgorithmClosed Ev.solutionVerificationClosed

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse