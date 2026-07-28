import BBNeumannOperatorsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannAdmittedObject where
  operatorAlgebra : Type u
  vonNeumannAlgebra : Type v
  factorType : Prop
  hyperfinite : Prop
  injective : Prop
  conclusion : factorType ∧ hyperfinite ∧ injective

structure AdmissibleClass where
  object : NeumannAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeumannWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse