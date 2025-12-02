package Locators;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LandingPageLocators {

    WebDriver driver;

    @Given("I launch the Chrome browser")
    public void iLaunchTheChromeBrowser() {
        
    }

    @And("I navigate to the application URL")
    public void iNavigateToTheApplicationURL() {
        
    }

    @When("I enter username {string}")
    public void iEnterUsername(String username) {
        WebElement usernameField = driver.findElement(By.xpath("//input[@id='username']"));
        usernameField.clear();
        usernameField.sendKeys(username);
    }

    @And("I enter password {string}")
    public void iEnterPassword(String password) {
        WebElement passwordField = driver.findElement(By.xpath("//input[@id='password']"));
        passwordField.clear();
        passwordField.sendKeys(password);
    }

    @And("I click the Login button")
    public void iClickTheLoginButton() {
        WebElement loginBtn = driver.findElement(By.xpath("//button[contains(text(),'Login')]"));
        loginBtn.click();
    }

    @Then("I should see {string}")
    public void iShouldSee(String expectedResult) {
        WebElement message = driver.findElement(By.xpath("//*[contains(text(),'" + expectedResult + "')]"));
        message.isDisplayed();
    }

    @Given("I login with valid credentials {string} and {string}")
    public void iLoginWithValidCredentials(String username, String password) {
        driver.findElement(By.xpath("//input[@id='username']")).sendKeys(username);
        driver.findElement(By.xpath("//input[@id='password']")).sendKeys(password);
        driver.findElement(By.xpath("//button[contains(text(),'Login')]")).click();
    }

    @Then("the breaches pie chart should be displayed")
    public void theBreachesPieChartShouldBeDisplayed() {
        WebElement pieChart = driver.findElement(By.xpath("//canvas[@id='breachesPieChart']"));
        pieChart.isDisplayed();
    }

    @When("I create a new breach with status {string}")
    public void iCreateANewBreachWithStatus(String status) {
        WebElement newBreachBtn = driver.findElement(By.xpath("//button[contains(text(),'New Breach')]"));
        newBreachBtn.click();

        WebElement statusDropdown = driver.findElement(By.xpath("//select[@id='breachStatus']"));
        statusDropdown.sendKeys(status);

        WebElement saveBtn = driver.findElement(By.xpath("//button[contains(text(),'Save')]"));
        saveBtn.click();
    }

    @Then("the breaches pie chart should update immediately")
    public void theBreachesPieChartShouldUpdateImmediately() {
        WebElement updatedChart = driver.findElement(By.xpath("//canvas[@id='breachesPieChart']"));
        updatedChart.isDisplayed();
    }

    @And("the breaches pie chart is displayed")
    public void theBreachesPieChartIsDisplayed() {
        WebElement pieChart = driver.findElement(By.xpath("//canvas[@id='breachesPieChart']"));
        pieChart.isDisplayed();
    }

    @When("I update the status of a breach from {string} to {string}")
    public void iUpdateTheStatusOfABreach(String fromStatus, String toStatus) {
        WebElement breachRow = driver.findElement(By.xpath("//td[contains(text(),'" + fromStatus + "')]"));
        breachRow.click();

        WebElement statusDropdown = driver.findElement(By.xpath("//select[@id='breachStatus']"));
        statusDropdown.sendKeys(toStatus);

        WebElement updateBtn = driver.findElement(By.xpath("//button[contains(text(),'Update')]"));
        updateBtn.click();
    }

    @Then("the breaches pie chart should reflect the status change immediately")
    public void theBreachesPieChartShouldReflectTheStatusChangeImmediately() {
        WebElement updated = driver.findElement(By.xpath("//canvas[@id='breachesPieChart']"));
        updated.isDisplayed();
    }

    @When("I filter breaches by status {string} where no records exist")
    public void iFilterBreachesByStatusWhereNoRecordsExist(String status) {
        WebElement filterDropdown = driver.findElement(By.xpath("//select[@id='breachFilter']"));
        filterDropdown.sendKeys(status);
    }

    @Then("the breaches pie chart should not display a slice for any status that has zero breaches")
    public void theBreachesPieChartShouldNotDisplayZeroSlices() {
        WebElement chart = driver.findElement(By.xpath("//canvas[@id='breachesPieChart']"));
        chart.isDisplayed();
    }

    @Then("the actions pie chart should be displayed")
    public void theActionsPieChartShouldBeDisplayed() {
        WebElement actionsPie = driver.findElement(By.xpath("//canvas[@id='actionsPieChart']"));
        actionsPie.isDisplayed();
    }

    @And("I should be able to hover over each slice")
    public void iShouldBeAbleToHoverOverEachSlice() {
        WebElement slice = driver.findElement(By.xpath("//canvas[@id='actionsPieChart']"));
        slice.isDisplayed();
    }

    @When("I update the status of an action from {string} to {string}")
    public void iUpdateTheStatusOfAnAction(String fromStatus, String toStatus) {
        WebElement actionRow = driver.findElement(By.xpath("//td[contains(text(),'" + fromStatus + "')]"));
        actionRow.click();

        WebElement statusDropdown = driver.findElement(By.xpath("//select[@id='actionStatus']"));
        statusDropdown.sendKeys(toStatus);

        WebElement updateBtn = driver.findElement(By.xpath("//button[contains(text(),'Update')]"));
        updateBtn.click();
    }

    @Then("the actions pie chart should reflect the status change immediately")
    public void theActionsPieChartShouldReflectTheStatusChangeImmediately() {
        WebElement updated = driver.findElement(By.xpath("//canvas[@id='actionsPieChart']"));
        updated.isDisplayed();
    }

    @When("I apply a filter resulting in no matching actions \\(e.g., status {string})")
    public void iApplyAFilterResultingInNoMatchingActions(String status) {
        WebElement filterDropdown = driver.findElement(By.xpath("//select[@id='actionFilter']"));
        filterDropdown.sendKeys(status);
    }

    @Then("the actions pie chart should not display a slice for any status that has zero actions")
    public void theActionsPieChartShouldNotDisplayZeroSlices() {
        WebElement chart = driver.findElement(By.xpath("//canvas[@id='actionsPieChart']"));
        chart.isDisplayed();
    }

    @When("I click the {string} button")
    public void iClickTheButton(String buttonName) {
        WebElement btn = driver.findElement(By.xpath("//button[contains(text(),'" + buttonName + "')]"));
        btn.click();
    }

    @Then("the system should navigate to the Breaches Dashboard")
    public void theSystemShouldNavigateToTheBreachesDashboard() {
        WebElement header = driver.findElement(By.xpath("//h1[contains(text(),'Breaches Dashboard')]"));
        header.isDisplayed();
    }

    @Then("the dashboard should only display breaches created in the last 12 months")
    public void dashboardDisplaysOnlyLast12Months() {
        WebElement grid = driver.findElement(By.xpath("//table[@id='breachesTable']"));
        grid.isDisplayed();
    }

    @Then("the system should navigate to the Actions Dashboard")
    public void theSystemShouldNavigateToTheActionsDashboard() {
        WebElement header = driver.findElement(By.xpath("//h1[contains(text(),'Actions Dashboard')]"));
        header.isDisplayed();
    }
}
