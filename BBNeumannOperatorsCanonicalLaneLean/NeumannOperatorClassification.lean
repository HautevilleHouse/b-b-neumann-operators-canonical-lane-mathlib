import BBNeumannOperatorsCanonicalLaneLean.Geometrization

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure NeumannClassificationPackage where
  operatorSpace : Type u
  spectralDecomposition : Prop
  discreteSpectrumClassified : Prop
  continuousSpectrumClassified : Prop

structure NeumannClassificationEvidence (C : NeumannClassificationPackage) where
  spectralDecompositionClosed : C.spectralDecomposition
  discreteSpectrumClassifiedClosed : C.discreteSpectrumClassified
  continuousSpectrumClassifiedClosed : C.continuousSpectrumClassified

def NeumannClassificationClosed (C : NeumannClassificationPackage) : Prop :=
  C.spectralDecomposition ∧ C.discreteSpectrumClassified ∧ C.continuousSpectrumClassified

theorem neumann_classification_closed_from_evidence
    (C : NeumannClassificationPackage) (E : NeumannClassificationEvidence C) :
    NeumannClassificationClosed C := by
  exact And.intro E.spectralDecompositionClosed
    (And.intro E.discreteSpectrumClassifiedClosed E.continuousSpectrumClassifiedClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse