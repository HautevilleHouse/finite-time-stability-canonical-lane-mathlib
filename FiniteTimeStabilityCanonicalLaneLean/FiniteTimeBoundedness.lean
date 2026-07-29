import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeBoundedness where
  trajectoryBound : Prop
  uniformlyUltimateBoundedness : Prop
  ultimateBoundEstimate : Prop
  settlingTimeBound : Prop
  trajectoryBoundClosed : trajectoryBound
  uniformlyUltimateBoundednessClosed : uniformlyUltimateBoundedness
  ultimateBoundEstimateClosed : ultimateBoundEstimate
  settlingTimeBoundClosed : settlingTimeBound

def FiniteTimeBoundednessClosed (B : FiniteTimeBoundedness) : Prop :=
  B.uniformlyUltimateBoundedness ∧ B.ultimateBoundEstimate ∧ B.settlingTimeBound

theorem finite_time_boundedness_closed_from_evidence
    (B : FiniteTimeBoundedness) : FiniteTimeBoundednessClosed B := by
  exact And.intro B.uniformlyUltimateBoundednessClosed
    (And.intro B.ultimateBoundEstimateClosed B.settlingTimeBoundClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse