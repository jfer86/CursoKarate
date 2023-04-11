import com.intuit.karate.junit5.Karate;

public class karaterunner {
   @Karate.Test
    Karate testAll() {
         return Karate.run("classpath:src/test/java/getrequest/getRequest.feature");
    }
}
