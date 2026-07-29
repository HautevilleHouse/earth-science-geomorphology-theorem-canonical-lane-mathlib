import EarthScienceGeomorphologyTheoremCanonicalLaneLean.EROSProcessPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure DiffusionSurfaceModelPackage {E : EROSProcessPackage} where
  hillslopeDiffusionEquation : Prop
  surfaceRelaxationTime : Prop
  boundaryFluxCondition : Prop

def DiffusionSurfaceModelClosed (D : DiffusionSurfaceModelPackage) : Prop :=
  D.hillslopeDiffusionEquation ∧ D.surfaceRelaxationTime ∧ D.boundaryFluxCondition

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse