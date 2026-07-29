import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure HillslopeTransportPackage where
  slopeGradient : Type u
  sedimentFlux : Type v
  transportLaw : Prop
  linearDiffusion : Prop
  nonlinearEffects : Prop
  criticalSlope : Prop
  continuityEquation : Prop

structure HillslopeTransportEvidence (H : HillslopeTransportPackage) where
  transportLawClosed : H.transportLaw
  linearDiffusionClosed : H.linearDiffusion
  nonlinearEffectsClosed : H.nonlinearEffects
  criticalSlopeClosed : H.criticalSlope
  continuityEquationClosed : H.continuityEquation

def HillslopeTransportClosed (H : HillslopeTransportPackage) : Prop :=
  H.transportLaw ∧ H.linearDiffusion ∧ H.nonlinearEffects ∧
  H.criticalSlope ∧ H.continuityEquation

theorem hillslope_transport_closed_from_evidence (H : HillslopeTransportPackage)
    (E : HillslopeTransportEvidence H) : HillslopeTransportClosed H := by
  exact And.intro E.transportLawClosed
    (And.intro E.linearDiffusionClosed
      (And.intro E.nonlinearEffectsClosed
        (And.intro E.criticalSlopeClosed E.continuityEquationClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse