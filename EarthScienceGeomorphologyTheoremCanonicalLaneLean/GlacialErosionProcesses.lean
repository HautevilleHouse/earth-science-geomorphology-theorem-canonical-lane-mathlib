import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure GlacialErosionPackage where
  glacierSystem : Type u
  bedrockAbration : Type v
  quarryingActive : Prop
  subglacialHydrology : Prop
  iceFlowVelocityField : Prop
  erosionRateCalibrated : Prop

structure GlacialErosionEvidence (G : GlacialErosionPackage) where
  quarryingActiveClosed : G.quarryingActive
  subglacialHydrologyClosed : G.subglacialHydrology
  iceFlowVelocityFieldClosed : G.iceFlowVelocityField
  erosionRateCalibratedClosed : G.erosionRateCalibrated

def GlacialErosionClosed (G : GlacialErosionPackage) : Prop :=
  G.quarryingActive ∧ G.subglacialHydrology ∧
  G.iceFlowVelocityField ∧ G.erosionRateCalibrated

theorem glacial_erosion_closed_from_evidence (G : GlacialErosionPackage)
    (E : GlacialErosionEvidence G) : GlacialErosionClosed G := by
  exact And.intro E.quarryingActiveClosed
    (And.intro E.subglacialHydrologyClosed
      (And.intro E.iceFlowVelocityFieldClosed E.erosionRateCalibratedClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse