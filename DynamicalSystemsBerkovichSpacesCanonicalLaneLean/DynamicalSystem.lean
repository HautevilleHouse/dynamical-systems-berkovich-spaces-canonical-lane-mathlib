import DynamicalSystemsBerkovichSpacesCanonicalLaneLean.BerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure DynamicalSystem (X : BerkovichSpace) where
  stateSpace : Type u
  evolution : ℕ → stateSpace → stateSpace
  continuous : Prop
  topologicalMixing : Prop
  entropyPositive : Prop
  continuousTerm : continuous
  topologicalMixingTerm : topologicalMixing
  entropyPositiveTerm : entropyPositive

structure DynamicalSystemEvidence (X : BerkovichSpace) (Φ : DynamicalSystem X) where
  continuousClosed : Φ.continuous
  topologicalMixingClosed : Φ.topologicalMixing
  entropyPositiveClosed : Φ.entropyPositive

def DynamicalSystemClosed (X : BerkovichSpace) (Φ : DynamicalSystem X) : Prop :=
  Φ.continuous ∧ Φ.topologicalMixing ∧ Φ.entropyPositive

theorem dynamical_system_closed_from_evidence (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : DynamicalSystemEvidence X Φ) : DynamicalSystemClosed X Φ := by
  exact And.intro E.continuousClosed (And.intro E.topologicalMixingClosed E.entropyPositiveClosed)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLeanend HautevilleHouse