import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure HillslopeDiffusionPackage where
  slopeProfile : Type u
  soilTransportRate : Type v
  diffusionEquationSatisfied : Prop
  boundaryConditionsApplied : Prop
  curvatureDrivenFlow : Prop
  evidenceOfDiffusiveRegime : Prop

structure HillslopeDiffusionEvidence (H : HillslopeDiffusionPackage) where
  diffusionEquationSatisfiedClosed : H.diffusionEquationSatisfied
  boundaryConditionsAppliedClosed : H.boundaryConditionsApplied
  curvatureDrivenFlowClosed : H.curvatureDrivenFlow
  evidenceOfDiffusiveRegimeClosed : H.evidenceOfDiffusiveRegime

def HillslopeDiffusionClosed (H : HillslopeDiffusionPackage) : Prop :=
  H.diffusionEquationSatisfied ∧ H.boundaryConditionsApplied ∧
  H.curvatureDrivenFlow ∧ H.evidenceOfDiffusiveRegime

theorem hillslope_diffusion_closed_from_evidence (H : HillslopeDiffusionPackage)
    (E : HillslopeDiffusionEvidence H) : HillslopeDiffusionClosed H := by
  exact And.intro E.diffusionEquationSatisfiedClosed
    (And.intro E.boundaryConditionsAppliedClosed
      (And.intro E.curvatureDrivenFlowClosed E.evidenceOfDiffusiveRegimeClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse