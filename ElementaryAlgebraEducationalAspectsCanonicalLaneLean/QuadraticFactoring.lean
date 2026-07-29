import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure QuadraticFactoringPackage where
  coefficientType : Type
  quadraticForm : Prop
  factoringMethod : Prop
  factoredForm : Prop
  verificationCondition : Prop

structure QuadraticFactoringEvidence (P : QuadraticFactoringPackage) where
  quadraticFormClosed : P.quadraticForm
  factoringMethodClosed : P.factoringMethod
  factoredFormClosed : P.factoredForm
  verificationConditionClosed : P.verificationCondition

def QuadraticFactoringClosed (P : QuadraticFactoringPackage) : Prop :=
  P.quadraticForm ∧ P.factoringMethod ∧ P.factoredForm ∧ P.verificationCondition

theorem quadratic_factoring_closed_from_evidence (P : QuadraticFactoringPackage) (E : QuadraticFactoringEvidence P) : QuadraticFactoringClosed P := by
  exact And.intro E.quadraticFormClosed (And.intro E.factoringMethodClosed (And.intro E.factoredFormClosed E.verificationConditionClosed))

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse
