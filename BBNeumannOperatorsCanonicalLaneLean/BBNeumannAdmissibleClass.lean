import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannOperator

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannAdmittedObject where
  operator : BBNeumannOperator
  operatorClosed : BBNeumannOperatorClosed operator
  spectralClosed : Prop

def BBNeumannWitnessClosed (O : BBNeumannAdmittedObject) : Prop :=
  O.operatorClosed ∧ O.spectralClosed

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse