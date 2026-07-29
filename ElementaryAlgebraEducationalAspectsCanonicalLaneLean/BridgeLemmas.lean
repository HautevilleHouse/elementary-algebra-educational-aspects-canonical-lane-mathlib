import ElementaryAlgebraEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse