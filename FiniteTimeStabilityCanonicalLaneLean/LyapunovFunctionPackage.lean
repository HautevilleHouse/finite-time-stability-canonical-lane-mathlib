import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovFunctionPackage where
  lyapunovFunction : Type u
  timeDerivative : lyapunovFunction -> Type v
  negativeDefinite : Prop
  settlesInFiniteTime : lyapunovFunction -> Prop
  exponent : ℝ

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  negativeDefiniteClosed : L.negativeDefinite
  settlesInFiniteTimeClosed : L.settlesInFiniteTime L.lyapunovFunction
  exponentPositive : L.exponent > 0

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.negativeDefinite ∧ L.settlesInFiniteTime L.lyapunovFunction ∧ L.exponent > 0

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage) (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.negativeDefiniteClosed (And.intro E.settlesInFiniteTimeClosed E.exponentPositive)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse