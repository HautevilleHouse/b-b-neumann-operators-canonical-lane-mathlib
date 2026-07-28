import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannOperator
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannSpectral

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannVonNeumannAlgebraPackage {O : BBNeumannOperator} {S : BBNeumannSpectralPackage O} where
  commutant : Prop
  doubleCommutant : Prop
  kaplanskyDensity : Prop
  typeClassification : Prop

structure BBNeumannVonNeumannAlgebraEvidence {O : BBNeumannOperator} {S : BBNeumannSpectralPackage O} (V : BBNeumannVonNeumannAlgebraPackage S) where
  commutantClosed : V.commutant
  doubleCommutantClosed : V.doubleCommutant
  kaplanskyDensityClosed : V.kaplanskyDensity
  typeClassificationClosed : V.typeClassification

def BBNeumannVonNeumannAlgebraClosed {O : BBNeumannOperator} {S : BBNeumannSpectralPackage O} (V : BBNeumannVonNeumannAlgebraPackage S) : Prop :=
  V.commutant ∧ V.doubleCommutant ∧ V.kaplanskyDensity ∧ V.typeClassification

theorem bb_neumann_von_neumann_algebra_closed_from_evidence {O : BBNeumannOperator} {S : BBNeumannSpectralPackage O} (V : BBNeumannVonNeumannAlgebraPackage S) (E : BBNeumannVonNeumannAlgebraEvidence V) :
    BBNeumannVonNeumannAlgebraClosed V := by
  exact And.intro E.commutantClosed (And.intro E.doubleCommutantClosed (And.intro E.kaplanskyDensityClosed E.typeClassificationClosed))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse