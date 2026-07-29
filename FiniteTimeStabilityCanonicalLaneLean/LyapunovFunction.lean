import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovFunctionPackage where
  lyapunovFunction : Type u
  positiveDefinite : Prop
  derivativeNegative : Prop
  settlingTimeBound : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeClosed : L.derivativeNegative
  settlingTimeBoundClosed : L.settlingTimeBound

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegative ∧ L.settlingTimeBound

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.derivativeNegativeClosed E.settlingTimeBoundClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse