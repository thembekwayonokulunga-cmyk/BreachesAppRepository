package Locators;

import Utils.SingletonWebdriver;
import org.openqa.selenium.WebDriver;

public class BreachAddScreen {
    WebDriver driver;

    public BreachAddScreen(){
        this.driver = SingletonWebdriver.getDriver();
    }

    public void navigateToUrl(){
        driver.get("https://apps.powerapps.com/play/e/default-5e62ee53-8e39-4f8c-a418-9165060fa979/a/1d68cb1a-255d-4c16-b821-fc87335f2267?tenantId=5e62ee53-8e39-4f8c-a418-9165060fa979&hint=dd117f77-b629-423a-8c78-ee941de0ad5b&sourcetime=1757582593815");
    }
}
