import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTimeStabilityCanonicalLaneLean.LyapunovDifferentialInequality

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeLyapunovStability where
  originEquilibrium : Prop
  lyapunovCandidate : Type u
  negativeDefiniteDerivative : Prop
  finiteSettlingTime : Prop
  settlingTimeEstimate : Prop
  originEquilibriumClosed : originEquilibrium
  negativeDefiniteDerivativeClosed : negativeDefiniteDerivative
  finiteSettlingTimeClosed : finiteSettlingTime
  settlingTimeEstimateClosed : settlingTimeEstimate

def FiniteTimeLyapunovStabilityClosed (F : FiniteTimeLyapunovStability) : Prop :=
  F.originEquilibrium ∧ F.negativeDefiniteDerivative ∧ F.finiteSettlingTime ∧ F.settlingTimeEstimate

theorem finite_time_lyapunov_stability_closed_from_evidence
    (F : FiniteTimeLyapunovStability) : FiniteTimeLyapunovStabilityClosed F := by
  exact And.intro F.originEquilibriumClosed
    (And.intro F.negativeDefiniteDerivativeClosed
      (And.intro F.finiteSettlingTimeClosed F.settlingTimeEstimateClosed))

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse