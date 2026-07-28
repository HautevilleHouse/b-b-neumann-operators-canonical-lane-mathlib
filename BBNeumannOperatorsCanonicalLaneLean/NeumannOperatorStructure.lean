import BBNeumannOperatorsCanonicalLaneLean.SpectralTheory

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannOperatorPackage where
  underlyingSpace : Type u
  innerProduct : Type v
  boundednessCondition : Prop
  normalityCondition : Prop
  functionalCalculus : Prop

structure NeumannOperatorEvidence (N : NeumannOperatorPackage) where
  boundednessClosed : N.boundednessCondition
  normalityClosed : N.normalityCondition
  functionalCalculusClosed : N.functionalCalculus

def NeumannOperatorClosed (N : NeumannOperatorPackage) : Prop :=
  N.boundednessCondition ∧ N.normalityCondition ∧ N.functionalCalculus

theorem neumann_operator_closed_from_evidence (N : NeumannOperatorPackage)
    (E : NeumannOperatorEvidence N) : NeumannOperatorClosed N := by
  exact And.intro E.boundednessClosed (And.intro E.normalityClosed E.functionalCalculusClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse