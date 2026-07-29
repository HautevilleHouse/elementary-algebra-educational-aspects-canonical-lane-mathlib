import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

def ConstrainedElementaryAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elementary_algebra_endgame (A : AdmissibleClass) :
    ConstrainedElementaryAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse