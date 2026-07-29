import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTimeStabilityCanonicalLaneLean.SlidingModeControl

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure TerminalSlidingMode where
  terminalSlidingSurface : Type u
  nonlinearReachingLaw : Prop
  singularityAvoidance : Prop
  finiteTimeConvergenceTSM : Prop
  terminalSlidingSurfaceClosed : terminalSlidingSurface
  nonlinearReachingLawClosed : nonlinearReachingLaw
  singularityAvoidanceClosed : singularityAvoidance
  finiteTimeConvergenceTSMClosed : finiteTimeConvergenceTSM

def TerminalSlidingModeClosed (T : TerminalSlidingMode) : Prop :=
  T.nonlinearReachingLaw ∧ T.singularityAvoidance ∧ T.finiteTimeConvergenceTSM

theorem terminal_sliding_mode_closed_from_evidence
    (T : TerminalSlidingMode) : TerminalSlidingModeClosed T := by
  exact And.intro T.nonlinearReachingLawClosed
    (And.intro T.singularityAvoidanceClosed T.finiteTimeConvergenceTSMClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse