package Utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class SingletonWebdriver {
    public static WebDriver driver;
    private SingletonWebdriver() {}
    public static WebDriver getDriver() {
        if (driver == null) {
            System.setProperty("webdriver.firefox.driver", "C:\\SeleniumWorkspace\\geckodriver.exe");
            driver = new ChromeDriver();
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
