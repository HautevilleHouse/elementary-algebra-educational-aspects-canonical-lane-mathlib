import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure AlgebraAdmittedObject where
  problemStatement : Prop
  solution : Prop
  solutionProved : solution

structure AdmissibleClass where
  object : AlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AlgebraWitnessClosed (O : AlgebraAdmittedObject) : Prop := O.solution

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse