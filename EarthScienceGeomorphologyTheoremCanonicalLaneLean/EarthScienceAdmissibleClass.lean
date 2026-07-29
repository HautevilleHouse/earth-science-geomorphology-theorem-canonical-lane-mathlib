import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure EarthScienceAdmittedObject where
  region : Type u
  surfaceTopology : TopologicalSpace region
  hasRelief : Prop
  boundaryConditions : Prop
  conclusion : Prop

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EarthScienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse