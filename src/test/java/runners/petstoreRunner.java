package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class petstoreRunner {

    private static final String FORMAT_FILES = "json";
    private static final String PATH_REPORT = "target/";
    private static final String NAME_REPORT = "Example Karate + Cucumber";

    /*@Karate.Test
    Karate testDemosingle(){
        return Karate.run("classpath:features/postpetstore.feature",
                "classpath:features/getpetstore.feature",
                "classpath:features/putpetstore.feature",
                "classpath:features/deletepetstore.feature");
    }*/

    //@Karate.Test
    @Test
    void testEjecucionTotal(){
        Results result = Runner.path("classpath:features/postpetstore.feature",
                "classpath:features/getpetstore.feature",
                "classpath:features/putpetstore.feature",
                "classpath:features/deletepetstore.feature"
        ).outputCucumberJson(true).parallel(3);
        createCucumberReport(result.getReportDir());
        assertEquals(0, result.getFailCount(), result.getErrorMessages());
    }

    private static void createCucumberReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] { FORMAT_FILES },
                Boolean.TRUE);
        List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File(PATH_REPORT), NAME_REPORT);
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
