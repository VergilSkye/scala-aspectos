package samples
import org.specs2.mutable.SpecificationWithJUnit
import com.vergil.aop.Sum

class AnnotationAspectTest extends SpecificationWithJUnit {

  "Sum of 2 and 3" should {

    "be 5" in {

      val sum = new Sum

      assert(sum.checkSum(2, 3) == 5)
    }
  }

}