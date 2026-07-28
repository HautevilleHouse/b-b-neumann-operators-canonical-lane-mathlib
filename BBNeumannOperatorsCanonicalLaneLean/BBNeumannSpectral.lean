import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannOperator

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannSpectralPackage (O : BBNeumannOperator) where
  spectrumSet : Set ℂ
  spectralMeasure : Type u
  spectralResolution : Prop
  functionalCalculus : Prop

structure BBNeumannSpectralEvidence {O : BBNeumannOperator} (S : BBNeumannSpectralPackage O) where
  spectralResolutionClosed : S.spectralResolution
  functionalCalculusClosed : S.functionalCalculus

def BBNeumannSpectralClosed {O : BBNeumannOperator} (S : BBNeumannSpectralPackage O) : Prop :=
  S.spectralResolution ∧ S.functionalCalculus

theorem bb_neumann_spectral_closed_from_evidence {O : BBNeumannOperator} (S : BBNeumannSpectralPackage O) (E : BBNeumannSpectralEvidence S) :
    BBNeumannSpectralClosed S := by
  exact And.intro E.spectralResolutionClosed E.functionalCalculusClosed

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse