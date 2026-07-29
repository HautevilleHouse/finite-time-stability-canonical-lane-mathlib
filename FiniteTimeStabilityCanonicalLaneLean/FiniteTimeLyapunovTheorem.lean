import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeLyapunovTheoremPackage where
  systemDynamics : Type u
  equilibriumPoint : Prop
  lyapunovFunction : LyapunovFunctionPackage
  finiteTimeConvergence : Prop
  convergenceTimeEstimate : Prop

structure FiniteTimeLyapunovTheoremEvidence (F : FiniteTimeLyapunovTheoremPackage) where
  lyapunovClosed : LyapunovFunctionClosed F.lyapunovFunction
  finiteTimeConvergenceClosed : F.finiteTimeConvergence
  convergenceTimeEstimateClosed : F.convergenceTimeEstimate

def FiniteTimeLyapunovTheoremClosed (F : FiniteTimeLyapunovTheoremPackage) : Prop :=
  LyapunovFunctionClosed F.lyapunovFunction ∧
  F.finiteTimeConvergence ∧
  F.convergenceTimeEstimate

theorem finite_time_lyapunov_theorem_closed_from_evidence
    (F : FiniteTimeLyapunovTheoremPackage)
    (E : FiniteTimeLyapunovTheoremEvidence F) : FiniteTimeLyapunovTheoremClosed F := by
  exact And.intro E.lyapunovClosed
    (And.intro E.finiteTimeConvergenceClosed E.convergenceTimeEstimateClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse