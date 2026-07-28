import BBNeumannOperatorsCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure OperatorAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  involution : algebra → algebra
  cstarIdentity : Prop
  vonNeumannAlgebra : VonNeumannAlgebraPackage
  doubleCommutantTheorem : Prop

structure OperatorAlgebraEvidence (P : OperatorAlgebraPackage) where
  cstarIdentityClosed : P.cstarIdentity
  doubleCommutantTheoremClosed : P.doubleCommutantTheorem

def OperatorAlgebraClosed (P : OperatorAlgebraPackage) : Prop :=
  P.cstarIdentity ∧ P.doubleCommutantTheorem

theorem operator_algebra_closed_from_evidence (P : OperatorAlgebraPackage)
    (E : OperatorAlgebraEvidence P) : OperatorAlgebraClosed P := by
  exact And.intro E.cstarIdentityClosed E.doubleCommutantTheoremClosed

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse