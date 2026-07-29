import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse