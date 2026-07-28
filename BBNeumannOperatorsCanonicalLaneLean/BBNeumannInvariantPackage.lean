import BBNeumannOperatorsCanonicalLaneLean.BBNeumannEvolutionPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannInvariantPackage {P : BBNeumannOperatorPackage}
  (E : BBNeumannEvolutionPackage P) where
  invariantFunction : (P.hilbertSpace → P.hilbertSpace) → ℝ
  monotonicAlongFlow : Prop
  boundedBelow : Prop

structure BBNeumannInvariantEvidence {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} (I : BBNeumannInvariantPackage E) where
  monotonicAlongFlowClosed : I.monotonicAlongFlow
  boundedBelowClosed : I.boundedBelow

def BBNeumannInvariantClosed {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} (I : BBNeumannInvariantPackage E) : Prop :=
  I.monotonicAlongFlow ∧ I.boundedBelow

theorem bb_neumann_invariant_closed_from_evidence {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} (I : BBNeumannInvariantPackage E)
  (Ev : BBNeumannInvariantEvidence I) : BBNeumannInvariantClosed I := by
  exact And.intro Ev.monotonicAlongFlowClosed Ev.boundedBelowClosed

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse