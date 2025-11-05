package Utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.testng.Assert;

import java.util.logging.Logger;


public class SingletonWebdriver {
    public static WebDriver driver;
    private SingletonWebdriver() {}
    private final static Logger LOGGER = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    public static WebDriver getDriver(){
        try {
            if(driver == null){
                driver = new EdgeDriver();
                driver.manage().window().maximize();
            }
        } catch (Exception e) {
            LOGGER.info(String.format("Unable to naviagte to breaches app: %s",e.getMessage()));
            Assert.fail("Unable to navigate to breaches app");
        }
        return driver;
    }

    public static void closeDriver() {
        if (driver != null) {
            driver.quit();
            driver = null;
        }
    }
}
