import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure EquationSolvingPackage where
  linearEquation : Type u
  solvingMethod : Type v
  solutionSet : Type w
  propertiesOfEquality : Prop
  stepwiseJustification : Prop
  modelingApplications : Prop

structure EquationSolvingEvidence (P : EquationSolvingPackage) where
  propertiesOfEqualityClosed : P.propertiesOfEquality
  stepwiseJustificationClosed : P.stepwiseJustification
  modelingApplicationsClosed : P.modelingApplications

def EquationSolvingClosed (P : EquationSolvingPackage) : Prop :=
  P.propertiesOfEquality ∧ P.stepwiseJustification ∧ P.modelingApplications

theorem equation_solving_closed_from_evidence (P : EquationSolvingPackage) (E : EquationSolvingEvidence P) :
    EquationSolvingClosed P := by
  exact And.intro E.propertiesOfEqualityClosed (And.intro E.stepwiseJustificationClosed E.modelingApplicationsClosed)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse