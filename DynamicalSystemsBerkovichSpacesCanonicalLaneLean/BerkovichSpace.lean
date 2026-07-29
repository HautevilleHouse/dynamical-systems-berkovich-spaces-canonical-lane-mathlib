import DynamicalSystemsBerkovichSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichSpace where
  pointSet : Type u
  topology : TopologicalSpace pointSet
  valuationRing : Type v
  analyticStructure : Prop
  separated : Prop
  locallyCompact : Prop
  analyticStructureTerm : analyticStructure
  separatedTerm : separated
  locallyCompactTerm : locallyCompact

structure BerkovichAdmittedObject where
  space : BerkovichSpace
  dynamicalSystem : Type w
  action : dynamicalSystem → pointSet → pointSet
  invariantMeasure : Prop
  mixingProperty : Prop
  classificationResult : Prop
  conclusion : classificationResult

def BerkovichWitnessClosed (O : BerkovichAdmittedObject) : Prop :=
  O.classificationResult

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse