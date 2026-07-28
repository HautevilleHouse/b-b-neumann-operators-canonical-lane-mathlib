import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure FactorTypePackage where
  factor : Type u
  typeI : Prop
  typeII : Prop
  typeIII : Prop
  typeClassificationUnique : Prop

structure FactorTypeEvidence (F : FactorTypePackage) where
  typeIClosed : F.typeI
  typeIIClosed : F.typeII
  typeIIIClosed : F.typeIII
  typeClassificationUniqueClosed : F.typeClassificationUnique

def FactorTypeClosed (F : FactorTypePackage) : Prop :=
  F.typeI ∧ F.typeII ∧ F.typeIII ∧ F.typeClassificationUnique

theorem factor_type_closed_from_evidence
    (F : FactorTypePackage) (E : FactorTypeEvidence F) :
    FactorTypeClosed F := by
  exact And.intro E.typeIClosed
    (And.intro E.typeIIClosed
      (And.intro E.typeIIIClosed E.typeClassificationUniqueClosed))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse