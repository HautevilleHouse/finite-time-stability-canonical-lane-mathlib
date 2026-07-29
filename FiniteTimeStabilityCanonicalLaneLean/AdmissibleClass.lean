import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure AdmissibleClass where
  object : FiniteTimeStabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FiniteTimeStabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse