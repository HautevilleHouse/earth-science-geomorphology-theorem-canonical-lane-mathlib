import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure FluvialLandscapePackage where
  drainageBasin : Type u
  channelNetwork : Type v
  streamPowerIncision : Prop
  sedimentTransportCapacity : Prop
  baseLevelFall : Prop
  dynamicEquilibriumShift : Prop

structure FluvialLandscapeEvidence (F : FluvialLandscapePackage) where
  streamPowerIncisionClosed : F.streamPowerIncision
  sedimentTransportCapacityClosed : F.sedimentTransportCapacity
  baseLevelFallClosed : F.baseLevelFall
  dynamicEquilibriumShiftClosed : F.dynamicEquilibriumShift

def FluvialLandscapeClosed (F : FluvialLandscapePackage) : Prop :=
  F.streamPowerIncision ∧ F.sedimentTransportCapacity ∧
  F.baseLevelFall ∧ F.dynamicEquilibriumShift

theorem fluvial_landscape_closed_from_evidence (F : FluvialLandscapePackage)
    (E : FluvialLandscapeEvidence F) : FluvialLandscapeClosed F := by
  exact And.intro E.streamPowerIncisionClosed
    (And.intro E.sedimentTransportCapacityClosed
      (And.intro E.baseLevelFallClosed E.dynamicEquilibriumShiftClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse