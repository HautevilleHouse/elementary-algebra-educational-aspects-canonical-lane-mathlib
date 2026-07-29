import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspectsCanonicalLaneLean

structure FunctionConceptsPackage where
  linearFunction : Type u
  slope : Type v
  intercept : Type w
  rateOfChange : Prop
  graphicalRepresentation : Prop
  contextualMeaning : Prop

structure FunctionConceptsEvidence (P : FunctionConceptsPackage) where
  rateOfChangeClosed : P.rateOfChange
  graphicalRepresentationClosed : P.graphicalRepresentation
  contextualMeaningClosed : P.contextualMeaning

def FunctionConceptsClosed (P : FunctionConceptsPackage) : Prop :=
  P.rateOfChange ∧ P.graphicalRepresentation ∧ P.contextualMeaning

theorem function_concepts_closed_from_evidence (P : FunctionConceptsPackage) (E : FunctionConceptsEvidence P) :
    FunctionConceptsClosed P := by
  exact And.intro E.rateOfChangeClosed (And.intro E.graphicalRepresentationClosed E.contextualMeaningClosed)

end ElementaryAlgebraEducationalAspectsCanonicalLaneLean
end HautevilleHouse