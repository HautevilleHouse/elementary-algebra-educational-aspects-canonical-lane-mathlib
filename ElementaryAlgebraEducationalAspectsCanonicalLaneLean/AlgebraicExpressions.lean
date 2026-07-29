import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.AlgebraicFinalTheorem

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure AlgebraicExpressionsPackage where
  variableSet : Type
  constantSet : Type
  expressionType : Type
  simplificationRules : Prop
  evaluationFunction : Prop

structure AlgebraicExpressionsEvidence (E : AlgebraicExpressionsPackage) where
  simplificationRulesClosed : E.simplificationRules
  evaluationFunctionClosed : E.evaluationFunction

def AlgebraicExpressionsClosed (E : AlgebraicExpressionsPackage) : Prop :=
  E.simplificationRules ∧ E.evaluationFunction

theorem algebraic_expressions_closed_from_evidence
    (E : AlgebraicExpressionsPackage) (Ev : AlgebraicExpressionsEvidence E) :
    AlgebraicExpressionsClosed E := by
  exact And.intro Ev.simplificationRulesClosed Ev.evaluationFunctionClosed

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse