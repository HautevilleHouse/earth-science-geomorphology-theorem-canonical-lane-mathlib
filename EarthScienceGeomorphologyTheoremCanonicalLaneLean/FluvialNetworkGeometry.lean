import EarthScienceGeomorphologyTheoremCanonicalLaneLean.DiffusionSurfaceModel

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure FluvialNetworkGeometryPackage {E : EROSProcessPackage} {D : DiffusionSurfaceModelPackage E} where
  streamPowerLaw : Prop
  drainageAreaDetachment : Prop
  knickpointMigration : Prop

def FluvialNetworkGeometryClosed (F : FluvialNetworkGeometryPackage) : Prop :=
  F.streamPowerLaw ∧ F.drainageAreaDetachment ∧ F.knickpointMigration

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse