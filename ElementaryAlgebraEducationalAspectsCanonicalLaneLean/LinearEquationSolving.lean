import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure LinearEquationPackage where
  variableType : Type
  coefficientType : Type
  equationForm : Prop
  solutionMethod : Prop
  solutionSet : Prop
  correctnessCondition : Prop

structure LinearEquationEvidence (P : LinearEquationPackage) where
  equationFormClosed : P.equationForm
  solutionMethodClosed : P.solutionMethod
  solutionSetClosed : P.solutionSet
  correctnessConditionClosed : P.correctnessCondition

def LinearEquationClosed (P : LinearEquationPackage) : Prop :=
  P.equationForm ∧ P.solutionMethod ∧ P.solutionSet ∧ P.correctnessCondition

theorem linear_equation_closed_from_evidence (P : LinearEquationPackage) (E : LinearEquationEvidence P) : LinearEquationClosed P := by
  exact And.intro E.equationFormClosed (And.intro E.solutionMethodClosed (And.intro E.solutionSetClosed E.correctnessConditionClosed))

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse
