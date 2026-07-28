import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannOperatorClass where
  operator : Type
  bounded : Prop
  normal : Prop
  selfAdjoint : Prop
  spectralMeasure : Prop
  conclusion : bounded ∧ normal

def neumannWitnessClosed (O : NeumannOperatorClass) : Prop :=
  O.bounded ∧ O.normal

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse