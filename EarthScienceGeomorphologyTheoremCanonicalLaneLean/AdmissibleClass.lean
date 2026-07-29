import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EarthScienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse