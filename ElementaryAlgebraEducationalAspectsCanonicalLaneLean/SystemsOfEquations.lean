import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure SystemsOfEquationsPackage where
  variableType : Type
  coefficientType : Type
  systemForm : Prop
  solutionMethod : Prop
  solutionSet : Prop
  consistencyCondition : Prop

structure SystemsOfEquationsEvidence (P : SystemsOfEquationsPackage) where
  systemFormClosed : P.systemForm
  solutionMethodClosed : P.solutionMethod
  solutionSetClosed : P.solutionSet
  consistencyConditionClosed : P.consistencyCondition

def SystemsOfEquationsClosed (P : SystemsOfEquationsPackage) : Prop :=
  P.systemForm ∧ P.solutionMethod ∧ P.solutionSet ∧ P.consistencyCondition

theorem systems_of_equations_closed_from_evidence (P : SystemsOfEquationsPackage) (E : SystemsOfEquationsEvidence P) : SystemsOfEquationsClosed P := by
  exact And.intro E.systemFormClosed (And.intro E.solutionMethodClosed (And.intro E.solutionSetClosed E.consistencyConditionClosed))

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse
