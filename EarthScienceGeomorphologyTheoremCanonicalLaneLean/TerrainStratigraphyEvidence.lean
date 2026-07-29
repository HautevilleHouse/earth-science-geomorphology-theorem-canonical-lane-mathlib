import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure TerrainStratigraphyPackage where
  terrainSurface : Type u
  stratigraphicColumns : Type v
  erosionSurfaceModel : Prop
  depositionalHistory : Prop
  tectonicUpliftRecorded : Prop
  weatheringProfileCaptured : Prop

structure TerrainStratigraphyEvidence (T : TerrainStratigraphyPackage) where
  erosionSurfaceModelClosed : T.erosionSurfaceModel
  depositionalHistoryClosed : T.depositionalHistory
  tectonicUpliftRecordedClosed : T.tectonicUpliftRecorded
  weatheringProfileCapturedClosed : T.weatheringProfileCaptured

def TerrainStratigraphyClosed (T : TerrainStratigraphyPackage) : Prop :=
  T.erosionSurfaceModel ∧ T.depositionalHistory ∧
  T.tectonicUpliftRecorded ∧ T.weatheringProfileCaptured

theorem terrain_stratigraphy_closed_from_evidence (T : TerrainStratigraphyPackage)
    (E : TerrainStratigraphyEvidence T) : TerrainStratigraphyClosed T := by
  exact And.intro E.erosionSurfaceModelClosed
    (And.intro E.depositionalHistoryClosed
      (And.intro E.tectonicUpliftRecordedClosed E.weatheringProfileCapturedClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse