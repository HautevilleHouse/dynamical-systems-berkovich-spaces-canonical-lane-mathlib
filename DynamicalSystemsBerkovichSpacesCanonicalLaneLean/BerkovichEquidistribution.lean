import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichEquidistribution where
  measureType : Type u
  invariance : Prop
  equidistributionSequence : Prop
  measureEntropyRelation : Prop
  arithmeticApplication : Prop

structure BerkovichEquidistributionEvidence (E : BerkovichEquidistribution) where
  invarianceClosed : E.invariance
  equidistributionSequenceClosed : E.equidistributionSequence
  measureEntropyRelationClosed : E.measureEntropyRelation
  arithmeticApplicationClosed : E.arithmeticApplication

def BerkovichEquidistributionClosed (E : BerkovichEquidistribution) : Prop :=
  E.invariance ∧ E.equidistributionSequence ∧
  E.measureEntropyRelation ∧ E.arithmeticApplication

theorem berkovich_equidistribution_closed_from_evidence
    (E : BerkovichEquidistribution) (Ev : BerkovichEquidistributionEvidence E) :
    BerkovichEquidistributionClosed E := by
  exact And.intro Ev.invarianceClosed
    (And.intro Ev.equidistributionSequenceClosed
      (And.intro Ev.measureEntropyRelationClosed Ev.arithmeticApplicationClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse