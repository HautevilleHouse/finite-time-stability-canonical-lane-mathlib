import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeStabilityAdmissibleObject where
  systemType : Type
  lyapunovFunction : systemType → ℝ
  derivativeCondition : Prop
  finiteTimeBound : ℝ
  settlingTime : ℝ
  originStable : Prop
  conclusion : derivativeCondition ∧ originStable

structure AdmissibleClass where
  object : FiniteTimeStabilityAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FiniteTimeStabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse