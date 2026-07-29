import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  berkovichConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "dynamical-systems-berkovich-spaces-canonical-lane"
  theoremName := "DynamicalSystemsBerkovichSpacesCanonicalLane"
  theoremObject := "Berkovich space dynamical system admissible closure"
  classicalBoundary := "open"
  berkovichConstrainedStatement := "Berkovich-constrained theorem certificate internalized through admissible class closure"
  certificateLane := "berkovich_constrained"
  carriedRemainder := "classical source boundary carried outside admissible closure"
}

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse