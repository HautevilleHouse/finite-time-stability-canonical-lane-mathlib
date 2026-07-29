import FiniteTimeStabilityCanonicalLaneLean.RicciFlowPDE

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure NoncollapsingPackage (L : LyapunovCharacterizationPackage) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {L : LyapunovCharacterizationPackage} (N : NoncollapsingPackage L) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {L : LyapunovCharacterizationPackage} (N : NoncollapsingPackage L) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {L : LyapunovCharacterizationPackage} (N : NoncollapsingPackage L)
    (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse
