import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichAffinoidAlgebra where
  affinoidAlgebra : Type u
  norm : affinoidAlgebra → ℝ
  multiplicative : ∀ f g : affinoidAlgebra, norm (f * g) ≤ norm f * norm g
  powerMultiplicative : ∀ n : ℕ, ∀ f : affinoidAlgebra, norm (f ^ n) = norm f ^ n
  spectralNormComplete : Prop

structure BerkovichAffinoidAlgebraEvidence (A : BerkovichAffinoidAlgebra) where
  multiplicativeClosed : A.multiplicative
  powerMultiplicativeClosed : A.powerMultiplicative
  spectralNormCompleteClosed : A.spectralNormComplete

def BerkovichAffinoidAlgebraClosed (A : BerkovichAffinoidAlgebra) : Prop :=
  A.multiplicative ∧ A.powerMultiplicative ∧ A.spectralNormComplete

theorem berkovich_affinoid_algebra_closed_from_evidence
    (A : BerkovichAffinoidAlgebra) (E : BerkovichAffinoidAlgebraEvidence A) :
    BerkovichAffinoidAlgebraClosed A := by
  exact And.intro E.multiplicativeClosed
    (And.intro E.powerMultiplicativeClosed E.spectralNormCompleteClosed)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse