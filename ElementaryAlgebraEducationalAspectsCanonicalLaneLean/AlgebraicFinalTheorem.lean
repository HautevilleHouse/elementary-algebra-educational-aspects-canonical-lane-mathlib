import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.AlgebraicGateLemmas

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

def ConstrainedAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_algebra_endgame (A : AdmissibleClass) :
    ConstrainedAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse