import ElementaryAlgebraEducationalAspectsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  algebraicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "elementary-algebra-educational-aspects-canonical-lane"
    theoremName := "ElementaryAlgebraClosureTheorem"
    theoremObject := "Elementary algebraic expressions with admissible constraints"
    classicalBoundary := "Unrestricted classical algebraic evaluation boundary"
    algebraicConstrainedStatement := "Every admissible algebraic structure satisfies the bridge and gate closure"
    certificateLane := "algebra_constrained"
    carriedRemainder := "Classical closure remains outside constrained closure" }

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey = "elementary-algebra-educational-aspects-canonical-lane" := by
  rfl

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse