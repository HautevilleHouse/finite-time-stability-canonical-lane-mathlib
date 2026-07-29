import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

def ConstrainedFiniteTimeStabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_time_stability_endgame (A : AdmissibleClass) :
    ConstrainedFiniteTimeStabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse