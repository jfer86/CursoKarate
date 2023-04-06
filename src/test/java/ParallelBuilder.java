import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

public class ParallelBuilder {

    /**
     * 
     */
    @Test
    public void executeKaratetest() {
        Builder aRunner = new Builder();
        aRunner.path("classpath:fileUpload");
        aRunner.parallel(0);


    }

}
