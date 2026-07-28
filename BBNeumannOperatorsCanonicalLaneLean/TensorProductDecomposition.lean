import BBNeumannOperatorsCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure TensorProductDecompositionPackage {V : VonNeumannAlgebraPackage} where
  tensorProductAlgebra : Type u
  spatialTensorProduct : Prop
  fusionRules : Prop
  subfactorTheory : Prop
  standardInvariant : Prop

structure TensorProductDecompositionEvidence {V : VonNeumannAlgebraPackage}
    (T : TensorProductDecompositionPackage V) where
  spatialTensorProductClosed : T.spatialTensorProduct
  fusionRulesClosed : T.fusionRules
  subfactorTheoryClosed : T.subfactorTheory
  standardInvariantClosed : T.standardInvariant

def TensorProductDecompositionClosed {V : VonNeumannAlgebraPackage}
    (T : TensorProductDecompositionPackage V) : Prop :=
  T.spatialTensorProduct ∧ T.fusionRules ∧
  T.subfactorTheory ∧ T.standardInvariant

theorem tensor_product_decomposition_closed_from_evidence
    {V : VonNeumannAlgebraPackage} (T : TensorProductDecompositionPackage V)
    (E : TensorProductDecompositionEvidence T) :
    TensorProductDecompositionClosed T := by
  exact And.intro E.spatialTensorProductClosed
    (And.intro E.fusionRulesClosed
      (And.intro E.subfactorTheoryClosed E.standardInvariantClosed))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse