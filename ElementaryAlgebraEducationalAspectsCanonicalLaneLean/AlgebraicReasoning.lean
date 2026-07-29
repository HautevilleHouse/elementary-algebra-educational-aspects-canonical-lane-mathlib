import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryAlgebraEducationalAspects

structure ReasoningRule where
  name : String
  premise : Prop
  conclusion : Prop
  sound : premise → conclusion

def applyRule (rule : ReasoningRule) (h : rule.premise) : rule.conclusion :=
  rule.sound h

structure ReasoningChain where
  rules : List ReasoningRule
  premises : List Prop
  conclusions : List Prop
  chainValid : Prop
  chainValidTerm : chainValid

def ReasoningClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ (
    ∀ (chain : ReasoningChain) (evidence : ReasoningEvidence A),
      chain.chainValid
  )

theorem reasoning_closed (A : AdmissibleClass) : ReasoningClosed A := by
  refine And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) ?_)
  intro chain evidence
  exact evidence.chainValidTerm

structure ReasoningEvidence (A : AdmissibleClass) where
  chainValidTerm : ReasoningChain.chainValid
  bridgeFromA : bridgeClosed A
  gateFromA : gateClosed A

theorem reasoning_evidence_from_admissible (A : AdmissibleClass) : ReasoningEvidence A := by
  exact {
    chainValidTerm := (by
      -- construct from A's object, if available
      exact A.object.chainValid
    )
    bridgeFromA := bridge_from_admissible_class A
    gateFromA := gate_from_admissible_class A
  }

end ElementaryAlgebraEducationalAspects
end HautevilleHouse