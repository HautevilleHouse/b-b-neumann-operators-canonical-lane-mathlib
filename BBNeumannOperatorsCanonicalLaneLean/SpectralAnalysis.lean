import BBNeumannOperatorsCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure SpectralAnalysisPackage {P : OperatorAlgebraPackage} where
  spectralDecomposition : Prop
  functionalCalculus : Prop
  borelFunctionalCalculus : Prop
  spectralMultiplicity : Prop

structure SpectralAnalysisEvidence {P : OperatorAlgebraPackage}
    (S : SpectralAnalysisPackage P) where
  spectralDecompositionClosed : S.spectralDecomposition
  functionalCalculusClosed : S.functionalCalculus
  borelFunctionalCalculusClosed : S.borelFunctionalCalculus
  spectralMultiplicityClosed : S.spectralMultiplicity

def SpectralAnalysisClosed {P : OperatorAlgebraPackage}
    (S : SpectralAnalysisPackage P) : Prop :=
  S.spectralDecomposition ∧ S.functionalCalculus ∧
  S.borelFunctionalCalculus ∧ S.spectralMultiplicity

theorem spectral_analysis_closed_from_evidence
    {P : OperatorAlgebraPackage} (S : SpectralAnalysisPackage P)
    (E : SpectralAnalysisEvidence S) : SpectralAnalysisClosed S := by
  exact And.intro E.spectralDecompositionClosed
    (And.intro E.functionalCalculusClosed
      (And.intro E.borelFunctionalCalculusClosed E.spectralMultiplicityClosed))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse