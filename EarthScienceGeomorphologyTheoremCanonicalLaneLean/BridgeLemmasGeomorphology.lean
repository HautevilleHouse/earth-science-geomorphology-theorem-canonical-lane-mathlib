import EarthScienceGeomorphologyTheoremCanonicalLaneLean.EarthScienceAdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EarthScienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse