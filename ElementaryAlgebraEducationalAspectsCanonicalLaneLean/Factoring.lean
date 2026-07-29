import HautevilleHouse.ElementaryAlgebraEducationalAspectsCanonicalLaneLean.EquationSolving

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure FactoringPackage {O : AlgebraObject} (E : EquationSolvingPackage O) where
  factorIdentification : Prop
  factorGrouping : Prop
  zeroProductProperty : Prop

structure FactoringEvidence {O : AlgebraObject} {E : EquationSolvingPackage O}
    (F : FactoringPackage E) where
  factorIdentificationClosed : F.factorIdentification
  factorGroupingClosed : F.factorGrouping
  zeroProductPropertyClosed : F.zeroProductProperty

def FactoringClosed {O : AlgebraObject} {E : EquationSolvingPackage O}
    (F : FactoringPackage E) : Prop :=
  F.factorIdentification ∧ F.factorGrouping ∧ F.zeroProductProperty

theorem factoring_closed_from_evidence
    {O : AlgebraObject} {E : EquationSolvingPackage O}
    (F : FactoringPackage E) (Ev : FactoringEvidence F) :
    FactoringClosed F := by
  exact And.intro Ev.factorIdentificationClosed
    (And.intro Ev.factorGroupingClosed Ev.zeroProductPropertyClosed)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse