import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichDynamicalPackage (B : BerkovichAffinoidPackage) where
  map : B.space → B.space
  continuity : Prop
  degree : Prop
  inducedMapOnReduced : Prop

structure BerkovichDynamicalEvidence {B : BerkovichAffinoidPackage}
    (D : BerkovichDynamicalPackage B) where
  continuityClosed : D.continuity
  degreeClosed : D.degree
  inducedMapOnReducedClosed : D.inducedMapOnReduced

def BerkovichDynamicalClosed {B : BerkovichAffinoidPackage}
    (D : BerkovichDynamicalPackage B) : Prop :=
  D.continuity ∧ D.degree ∧ D.inducedMapOnReduced

theorem berkovich_dynamical_closed_from_evidence
    {B : BerkovichAffinoidPackage} (D : BerkovichDynamicalPackage B)
    (E : BerkovichDynamicalEvidence D) : BerkovichDynamicalClosed D := by
  exact And.intro E.continuityClosed (And.intro E.degreeClosed E.inducedMapOnReducedClosed)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse
