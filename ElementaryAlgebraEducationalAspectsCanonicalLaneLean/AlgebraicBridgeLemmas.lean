import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.AlgebraicAdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.solutionProved

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse