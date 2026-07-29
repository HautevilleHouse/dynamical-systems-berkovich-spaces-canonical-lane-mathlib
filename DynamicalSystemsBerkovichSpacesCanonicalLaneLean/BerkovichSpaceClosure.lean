import canonicalLaneMathlib.AdmissibleClass

/-!
# Berkovich Space Closure Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure AdmissibleBerkovichClass where
  berkovich : BerkovichSpace ℂ
  dynamicalSystem : DynamicalSystem berkovich
  juliaSet : JuliaSet berkovich dynamicalSystem
  potentialTheory : PotentialTheory

def bridgeClosed (A : AdmissibleBerkovichClass) : Prop := BerkovichStructureClosed A.berkovich

def gateClosed (A : AdmissibleBerkovichClass) : Prop := JuliaSetClosed A.juliaSet ∧ PotentialTheoryClosed A.potentialTheory

theorem bridge_from_admissible_class (A : AdmissibleBerkovichClass) : bridgeClosed A := by
  exact A.berkovich.analyticStructureTerm

theorem gate_from_admissible_class (A : AdmissibleBerkovichClass) : gateClosed A := by
  exact And.intro (And.intro A.juliaSet.forwardInvariantTerm A.juliaSet.repellingClosureTerm) A.potentialTheory.energyFunctionalTerm

def ConstrainedBerkovichClosure (A : AdmissibleBerkovichClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_endgame (A : AdmissibleBerkovichClass) : ConstrainedBerkovichClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse