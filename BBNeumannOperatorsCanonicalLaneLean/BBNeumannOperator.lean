import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannOperatorPackage where
  hilbertSpace : Type u
  vonNeumannAlgebra : Type v
  distinguishedOperator : Type w
  algebraClosure : Prop
  operatorSpectralProperties : Prop
  bbNeumannOperatorProperty : Prop

structure BBNeumannOperatorEvidence (P : BBNeumannOperatorPackage) where
  algebraClosureClosed : P.algebraClosure
  operatorSpectralPropertiesClosed : P.operatorSpectralProperties
  bbNeumannOperatorPropertyClosed : P.bbNeumannOperatorProperty

def BBNeumannOperatorClosed (P : BBNeumannOperatorPackage) : Prop :=
  P.algebraClosure ∧ P.operatorSpectralProperties ∧ P.bbNeumannOperatorProperty

theorem bb_neumann_operator_closed_from_evidence
    (P : BBNeumannOperatorPackage) (E : BBNeumannOperatorEvidence P) :
    BBNeumannOperatorClosed P := by
  exact And.intro E.algebraClosureClosed
    (And.intro E.operatorSpectralPropertiesClosed E.bbNeumannOperatorPropertyClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse