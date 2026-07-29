import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichAttractionBasins where
  basinType : Type u
  attractingRegions : Prop
  repellingRegions : Prop
  indifferentRegions : Prop
  basinBoundaryStructure : Prop

structure BerkovichAttractionBasinsEvidence (B : BerkovichAttractionBasins) where
  attractingRegionsClosed : B.attractingRegions
  repellingRegionsClosed : B.repellingRegions
  indifferentRegionsClosed : B.indifferentRegions
  basinBoundaryStructureClosed : B.basinBoundaryStructure

def BerkovichAttractionBasinsClosed (B : BerkovichAttractionBasins) : Prop :=
  B.attractingRegions ∧ B.repellingRegions ∧
  B.indifferentRegions ∧ B.basinBoundaryStructure

theorem berkovich_attraction_basins_closed_from_evidence
    (B : BerkovichAttractionBasins) (E : BerkovichAttractionBasinsEvidence B) :
    BerkovichAttractionBasinsClosed B := by
  exact And.intro E.attractingRegionsClosed
    (And.intro E.repellingRegionsClosed
      (And.intro E.indifferentRegionsClosed E.basinBoundaryStructureClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse