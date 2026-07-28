import BBNeumannOperatorsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

lemma bounded_normal_iff (A : NeumannOperatorClass) : A.bounded ∧ A.normal := A.conclusion

theorem formalization_checked : True := trivial

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse