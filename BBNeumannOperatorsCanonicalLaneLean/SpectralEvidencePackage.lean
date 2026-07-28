import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsCanonicalLaneLean.NeumannOperatorPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure SpectralEvidencePackage {P : NeumannOperatorPackage} where
  eigenvalueSequence : Prop
  eigenfunctionBasis : Prop
  spectralGapEstimate : Prop

structure SpectralEvidenceEvidence {P : NeumannOperatorPackage} (S : SpectralEvidencePackage P) where
  eigenvalueSequenceClosed : S.eigenvalueSequence
  eigenfunctionBasisClosed : S.eigenfunctionBasis
  spectralGapEstimateClosed : S.spectralGapEstimate

def SpectralEvidenceClosed {P : NeumannOperatorPackage} (S : SpectralEvidencePackage P) : Prop :=
  S.eigenvalueSequence ∧ S.eigenfunctionBasis ∧ S.spectralGapEstimate

theorem spectral_evidence_closed_from_evidence {P : NeumannOperatorPackage} (S : SpectralEvidencePackage P) (E : SpectralEvidenceEvidence S) :
    SpectralEvidenceClosed S := by
  exact And.intro E.eigenvalueSequenceClosed (And.intro E.eigenfunctionBasisClosed E.spectralGapEstimateClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse