import DynamicalSystemsBerkovichSpacesCanonicalLaneLean.BerkovichAnalysisExtension

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure ClassificationBridge (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) where
  bridgeMap : Φ.entropyPositive → Prop
  classificationConverges : Prop
  endpointReached : Prop
  bridgeMapTerm : bridgeMap Φ.entropyPositiveTerm
  classificationConvergesTerm : classificationConverges
  endpointReachedTerm : endpointReached

structure ClassificationBridgeEvidence (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) (B : ClassificationBridge X Φ E) where
  classificationConvergesClosed : B.classificationConverges
  endpointReachedClosed : B.endpointReached

def ClassificationBridgeClosed (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) (B : ClassificationBridge X Φ E) : Prop :=
  B.classificationConverges ∧ B.endpointReached

theorem classification_bridge_closed_from_evidence (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) (B : ClassificationBridge X Φ E)
    (Ev : ClassificationBridgeEvidence X Φ E B) : ClassificationBridgeClosed X Φ E B := by
  exact And.intro Ev.classificationConvergesClosed Ev.endpointReachedClosed

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse