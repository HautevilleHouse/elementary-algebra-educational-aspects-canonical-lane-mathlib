import canonicalLaneMathlib.AdmissibleClass

/-!
# Algebra Educational Object

This module defines the core object for elementary algebra educational aspects:
a problem or concept that can be demonstrated by a student.
-/

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure AlgebraProblem where
  problemStatement : String
  conceptTag : String
  solved : Prop
  skillDemonstrated : Prop
  solutionSteps : Nat
  solutionStepsTerm : solutionSteps > 0

structure AlgebraObject where
  problem : AlgebraProblem
  studentUnderstanding : Prop
  conclusion : studentUnderstanding

def AlgebraObjectClosed (O : AlgebraObject) : Prop :=
  O.studentUnderstanding

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse