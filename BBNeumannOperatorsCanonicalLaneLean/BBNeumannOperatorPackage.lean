import BBNeumannOperatorsCanonicalLaneLean.BBNeumannAdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannOperatorPackage where
  hilbertSpace : Type u
  innerProduct : Type v
  operator : hilbertSpace → hilbertSpace
  bounded : Prop
  selfAdjoint : Prop
  spectrumCompact : Prop

structure BBNeumannOperatorEvidence (P : BBNeumannOperatorPackage) where
  boundedClosed : P.bounded
  selfAdjointClosed : P.selfAdjoint
  spectrumCompactClosed : P.spectrumCompact

def BBNeumannOperatorClosed (P : BBNeumannOperatorPackage) : Prop :=
  P.bounded ∧ P.selfAdjoint ∧ P.spectrumCompact

theorem bb_neumann_operator_closed_from_evidence (P : BBNeumannOperatorPackage)
  (E : BBNeumannOperatorEvidence P) : BBNeumannOperatorClosed P := by
  exact And.intro E.boundedClosed (And.intro E.selfAdjointClosed E.spectrumCompactClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse