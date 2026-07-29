import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichCanonicalHeightPackage {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalPackage B} (P : BerkovichPotentialPackage D) where
  heightFunction : Prop
  northcottProperty : Prop
  equidistribution : Prop
  arithmeticApplication : Prop

structure BerkovichCanonicalHeightEvidence {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalPackage B} {P : BerkovichPotentialPackage D}
    (H : BerkovichCanonicalHeightPackage P) where
  heightFunctionClosed : H.heightFunction
  northcottPropertyClosed : H.northcottProperty
  equidistributionClosed : H.equidistribution
  arithmeticApplicationClosed : H.arithmeticApplication

def BerkovichCanonicalHeightClosed {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalPackage B} {P : BerkovichPotentialPackage D}
    (H : BerkovichCanonicalHeightPackage P) : Prop :=
  H.heightFunction ∧ H.northcottProperty ∧ H.equidistribution ∧ H.arithmeticApplication

theorem berkovich_canonical_height_closed_from_evidence
    {B : BerkovichAffinoidPackage} {D : BerkovichDynamicalPackage B}
    {P : BerkovichPotentialPackage D} (H : BerkovichCanonicalHeightPackage P)
    (E : BerkovichCanonicalHeightEvidence H) : BerkovichCanonicalHeightClosed H := by
  exact And.intro E.heightFunctionClosed
    (And.intro E.northcottPropertyClosed
      (And.intro E.equidistributionClosed E.arithmeticApplicationClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse
