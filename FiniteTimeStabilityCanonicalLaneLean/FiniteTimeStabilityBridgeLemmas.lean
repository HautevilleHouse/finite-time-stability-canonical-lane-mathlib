import canonicalLaneMathlib.AdmissibleClass
import FiniteTimeStabilityCanonicalLaneLean.FiniteTimeStabilityAdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiniteTimeStabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse