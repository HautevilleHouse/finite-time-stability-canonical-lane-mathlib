import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovDifferentialInequality where
  lyapunovFunction : Type u
  derivativeEstimate : Prop
  convergenceRate : Prop
  settlingTimeBound : Prop
  derivativeEstimateClosed : derivativeEstimate
  convergenceRateClosed : convergenceRate
  settlingTimeBoundClosed : settlingTimeBound

def LyapunovDifferentialInequalityClosed (L : LyapunovDifferentialInequality) : Prop :=
  L.derivativeEstimate ∧ L.convergenceRate ∧ L.settlingTimeBound

theorem lyapunov_differential_inequality_closed_from_evidence
    (L : LyapunovDifferentialInequality) : LyapunovDifferentialInequalityClosed L := by
  exact And.intro L.derivativeEstimateClosed (And.intro L.convergenceRateClosed L.settlingTimeBoundClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse