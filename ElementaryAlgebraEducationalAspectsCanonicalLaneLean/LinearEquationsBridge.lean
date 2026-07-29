import ElementaryAlgebraEducationalAspectsCanonicalLaneLean.FinalTheorem

/-!
# Linear Equations Bridge Package
-/

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure LinearEquationProblem where
  coefficientA : ℚ
  coefficientB : ℚ
  constantC : ℚ
  solutionFound : Prop
  stepsCorrect : Prop

structure LinearEquationsPackage where
  equation : LinearEquationProblem
  solvingMethodApplied : Prop
  solutionChecked : Prop
  skillTransferable : Prop

structure LinearEquationsEvidence (P : LinearEquationsPackage) where
  equationSolutionFoundClosed : P.equation.solutionFound
  stepsCorrectClosed : P.equation.stepsCorrect
  solvingMethodAppliedClosed : P.solvingMethodApplied
  skillTransferableClosed : P.skillTransferable

def LinearEquationsClosed (P : LinearEquationsPackage) : Prop :=
  P.equation.solutionFound ∧ P.equation.stepsCorrect ∧
  P.solvingMethodApplied ∧ P.skillTransferable

theorem linear_equations_closed_from_evidence
    (P : LinearEquationsPackage) (E : LinearEquationsEvidence P) :
    LinearEquationsClosed P := by
  exact And.intro E.equationSolutionFoundClosed
    (And.intro E.stepsCorrectClosed
      (And.intro E.solvingMethodAppliedClosed E.skillTransferableClosed))

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse