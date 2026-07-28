import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : MeasureTheory.Measure carrier

structure NeumannAdmittedObject where
  space : NeumannSpace
  operatorBoundaryResolvent : Prop
  compactResolvent : Prop
  spectralGapPositive : Prop
  conclusion : operatorBoundaryResolvent ∧ compactResolvent ∧ spectralGapPositive

def NeumannWitnessClosed (O : NeumannAdmittedObject) : Prop :=
  O.operatorBoundaryResolvent ∧ O.compactResolvent ∧ O.spectralGapPositive

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse