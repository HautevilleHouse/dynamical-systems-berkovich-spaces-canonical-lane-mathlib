import DynamicalSystemsBerkovichSpacesCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichAnalysisExtension (X : BerkovichSpace) (Φ : DynamicalSystem X) where
  extensionSet : Type u
  extensionMap : extensionSet → extensionSet
  measurePreserving : Prop
  mixingTransferred : Prop
  classificationExtended : Prop
  measurePreservingTerm : measurePreserving
  mixingTransferredTerm : mixingTransferred
  classificationExtendedTerm : classificationExtended

structure BerkovichAnalysisExtensionEvidence (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) where
  measurePreservingClosed : E.measurePreserving
  mixingTransferredClosed : E.mixingTransferred
  classificationExtendedClosed : E.classificationExtended

def BerkovichAnalysisExtensionClosed (X : BerkovichSpace) (Φ : DynamicalSystem X)
    (E : BerkovichAnalysisExtension X Φ) : Prop :=
  E.measurePreserving ∧ E.mixingTransferred ∧ E.classificationExtended

theorem berkovich_analysis_extension_closed_from_evidence
    (X : BerkovichSpace) (Φ : DynamicalSystem X) (E : BerkovichAnalysisExtension X Φ)
    (Ev : BerkovichAnalysisExtensionEvidence X Φ E) : BerkovichAnalysisExtensionClosed X Φ E := by
  exact And.intro Ev.measurePreservingClosed (And.intro Ev.mixingTransferredClosed Ev.classificationExtendedClosed)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse