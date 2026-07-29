import EarthScienceGeomorphologyTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure HillslopeDiffusionPackage (G : RiemannianCurvaturePackage) where
  diffusivityField : Type u
  topographicGradient : Type v
  continuityEquation : Prop
  boundaryConditions : Prop

structure HillslopeDiffusionEvidence {G : RiemannianCurvaturePackage}
  (H : HillslopeDiffusionPackage G) where
  diffusivityFieldClosed : H.diffusivityField
  topographicGradientClosed : H.topographicGradient
  continuityEquationClosed : H.continuityEquation
  boundaryConditionsClosed : H.boundaryConditions

def HillslopeDiffusionClosed {G : RiemannianCurvaturePackage}
  (H : HillslopeDiffusionPackage G) : Prop :=
  H.diffusivityField ∧ H.topographicGradient ∧ H.continuityEquation ∧ H.boundaryConditions

theorem hillslope_diffusion_closed_from_evidence {G : RiemannianCurvaturePackage}
  (H : HillslopeDiffusionPackage G) (E : HillslopeDiffusionEvidence H) :
  HillslopeDiffusionClosed H := by
  exact And.intro E.diffusivityFieldClosed
    (And.intro E.topographicGradientClosed
      (And.intro E.continuityEquationClosed E.boundaryConditionsClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse