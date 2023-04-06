import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

public class ParallelRunner {

    /**
     * 
     */
    @Test
    public void executeKaratetest() {
        Builder aRunner = new Builder();
        aRunner.path("classpath:java");
        aRunner.parallel(0);
        aRunner.tags("@smoke");
        
    }

}
