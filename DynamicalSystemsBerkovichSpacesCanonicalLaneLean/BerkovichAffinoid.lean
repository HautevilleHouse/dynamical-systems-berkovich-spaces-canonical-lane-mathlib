import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichAffinoidPackage where
  space : Type u
  topology : TopologicalSpace space
  structureSheaf : Type v
  affinoidAlgebra : Type w
  supremumNorm : Prop
  boundedness : Prop

structure BerkovichAffinoidEvidence (B : BerkovichAffinoidPackage) where
  supremumNormClosed : B.supremumNorm
  boundednessClosed : B.boundedness

def BerkovichAffinoidClosed (B : BerkovichAffinoidPackage) : Prop :=
  B.supremumNorm ∧ B.boundedness

theorem berkovich_affinoid_closed_from_evidence (B : BerkovichAffinoidPackage)
    (E : BerkovichAffinoidEvidence B) : BerkovichAffinoidClosed B := by
  exact And.intro E.supremumNormClosed E.boundednessClosed

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse
