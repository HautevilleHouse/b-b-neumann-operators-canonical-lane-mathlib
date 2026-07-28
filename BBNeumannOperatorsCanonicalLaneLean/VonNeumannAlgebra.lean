import BBNeumannOperatorsCanonicalLaneLean.SpectralAnalysis

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure VonNeumannAlgebraPackage where
  algebra : Type u
  weakOperatorTopology : Prop
  commutant : Prop
  doubleCommutant : Prop
  factor : Prop
  typeClassification : Prop

structure VonNeumannAlgebraEvidence (V : VonNeumannAlgebraPackage) where
  weakOperatorTopologyClosed : V.weakOperatorTopology
  commutantClosed : V.commutant
  doubleCommutantClosed : V.doubleCommutant
  factorClosed : V.factor
  typeClassificationClosed : V.typeClassification

def VonNeumannAlgebraClosed (V : VonNeumannAlgebraPackage) : Prop :=
  V.weakOperatorTopology ∧ V.commutant ∧ V.doubleCommutant ∧
  V.factor ∧ V.typeClassification

theorem von_neumann_algebra_closed_from_evidence (V : VonNeumannAlgebraPackage)
    (E : VonNeumannAlgebraEvidence V) : VonNeumannAlgebraClosed V := by
  exact And.intro E.weakOperatorTopologyClosed
    (And.intro E.commutantClosed
      (And.intro E.doubleCommutantClosed
        (And.intro E.factorClosed E.typeClassificationClosed)))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse