import ElementaryAlgebraEducationalAspectsCanonicalLaneLean.FinalTheorem

/-!
# Quadratic Equations Bridge Package
-/

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure QuadraticEquationProblem where
  a : ℚ
  b : ℚ
  c : ℚ
  discriminantNonNegative : Prop
  rootsFound : Prop
  stepsCorrect : Prop

structure QuadraticEquationsPackage where
  equation : QuadraticEquationProblem
  formulaApplied : Prop
  solutionsChecked : Prop
  conceptualUnderstanding : Prop

structure QuadraticEquationsEvidence (P : QuadraticEquationsPackage) where
  discriminantNonNegativeClosed : P.equation.discriminantNonNegative
  stepsCorrectClosed : P.equation.stepsCorrect
  formulaAppliedClosed : P.formulaApplied
  conceptualUnderstandingClosed : P.conceptualUnderstanding

def QuadraticEquationsClosed (P : QuadraticEquationsPackage) : Prop :=
  P.equation.discriminantNonNegative ∧ P.equation.stepsCorrect ∧
  P.formulaApplied ∧ P.conceptualUnderstanding

theorem quadratic_equations_closed_from_evidence
    (P : QuadraticEquationsPackage) (E : QuadraticEquationsEvidence P) :
    QuadraticEquationsClosed P := by
  exact And.intro E.discriminantNonNegativeClosed
    (And.intro E.stepsCorrectClosed
      (And.intro E.formulaAppliedClosed E.conceptualUnderstandingClosed))

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse