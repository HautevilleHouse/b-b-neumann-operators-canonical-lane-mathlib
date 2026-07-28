import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannOperatorPackage where
  operator : Type u
  domain : Type v
  boundaryCondition : Prop
  spectralMeasureAvailable : Prop
  resolventCompact : Prop

structure NeumannOperatorEvidence (P : NeumannOperatorPackage) where
  boundaryConditionClosed : P.boundaryCondition
  spectralMeasureAvailableClosed : P.spectralMeasureAvailable
  resolventCompactClosed : P.resolventCompact

def NeumannOperatorClosed (P : NeumannOperatorPackage) : Prop :=
  P.boundaryCondition ∧ P.spectralMeasureAvailable ∧ P.resolventCompact

theorem neumann_operator_closed_from_evidence (P : NeumannOperatorPackage) (E : NeumannOperatorEvidence P) :
    NeumannOperatorClosed P := by
  exact And.intro E.boundaryConditionClosed (And.intro E.spectralMeasureAvailableClosed E.resolventCompactClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse