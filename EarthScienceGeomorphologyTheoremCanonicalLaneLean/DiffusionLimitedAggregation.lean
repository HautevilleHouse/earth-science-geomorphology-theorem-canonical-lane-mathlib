import EarthScienceGeomorphologyTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure DiffusionLimitedAggregationPackage (G : RiemannianCurvaturePackage) where
  particleMotion : Type u
  stickingProbability : Prop
  growthRate : Prop
  settlementRule : Prop

structure DiffusionLimitedAggregationEvidence {G : RiemannianCurvaturePackage}
  (A : DiffusionLimitedAggregationPackage G) where
  particleMotionClosed : A.particleMotion
  stickingProbabilityClosed : A.stickingProbability
  growthRateClosed : A.growthRate
  settlementRuleClosed : A.settlementRule

def DiffusionLimitedAggregationClosed {G : RiemannianCurvaturePackage}
  (A : DiffusionLimitedAggregationPackage G) : Prop :=
  A.particleMotion ∧ A.stickingProbability ∧ A.growthRate ∧ A.settlementRule

theorem dLA_closed_from_evidence {G : RiemannianCurvaturePackage}
  (A : DiffusionLimitedAggregationPackage G) (E : DiffusionLimitedAggregationEvidence A) :
  DiffusionLimitedAggregationClosed A := by
  exact And.intro E.particleMotionClosed
    (And.intro E.stickingProbabilityClosed
      (And.intro E.growthRateClosed E.settlementRuleClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse