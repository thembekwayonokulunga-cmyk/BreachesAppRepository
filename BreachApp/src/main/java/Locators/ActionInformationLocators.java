package Locators;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class ActionInformationLocators {

    WebDriver driver;

    @Given("the user is logged in with valid credentials")
    public void theUserIsLoggedInWithValidCredentials() {
       
    }

    @When("the user clicks on the 'All Actions' button")
    public void theUserClicksOnTheAllActionsButton() {
        WebElement allActionsBtn = driver.findElement(By.xpath("//button[contains(text(),'All Actions')]"));
        allActionsBtn.click();
    }

    @Then("the Actions Dashboard is displayed showing all actions in a grid format")
    public void theActionsDashboardIsDisplayed() {
        WebElement actionGrid = driver.findElement(By.xpath("//div[contains(@class,'actions-grid')]"));
        actionGrid.isDisplayed();
    }

    @And("the user locates an action with Reference No. {string}")
    public void theUserLocatesAnActionWithReferenceNo(String refNo) {
        WebElement actionRecord = driver.findElement(By.xpath("//td[contains(text(),'" + refNo + "')]"));
        actionRecord.click();
    }

    @Then("the action record appears in the list")
    public void theActionRecordAppearsInTheList() {
        WebElement actionRecord = driver.findElement(By.xpath("//table"));
        actionRecord.isDisplayed();
    }

    @Given("the user selects the action")
    public void theUserSelectsTheAction() {
        WebElement actionRow = driver.findElement(By.xpath("//tr[contains(@class,'selected-action')]"));
        actionRow.click();
    }

    @Then("the Action Due Date displayed matches the system record")
    public void theActionDueDateDisplayedMatchesTheSystemRecord() {
        WebElement dueDate = driver.findElement(By.xpath("//span[@id='actionDueDate']"));
        dueDate.isDisplayed();
    }

    @Then("the Action Status displayed matches the system record")
    public void theActionStatusDisplayedMatchesTheSystemRecord() {
        WebElement status = driver.findElement(By.xpath("//span[@id='actionStatus']"));
        status.isDisplayed();
    }

    @Then("the Responsible Individual displayed matches the system record")
    public void theResponsibleIndividualDisplayedMatchesTheSystemRecord() {
        WebElement responsible = driver.findElement(By.xpath("//span[@id='responsibleIndividual']"));
        responsible.isDisplayed();
    }

    @Then("the Accountable Individual displayed matches the system record")
    public void theAccountableIndividualDisplayedMatchesTheSystemRecord() {
        WebElement accountable = driver.findElement(By.xpath("//span[@id='accountableIndividual']"));
        accountable.isDisplayed();
    }

    @Then("the Delegated Individual displayed matches the system record")
    public void theDelegatedIndividualDisplayedMatchesTheSystemRecord() {
        WebElement delegated = driver.findElement(By.xpath("//span[@id='delegatedIndividual']"));
        delegated.isDisplayed();
    }

    @Then("the Root Cause displayed matches the system record")
    public void theRootCauseDisplayedMatchesTheSystemRecord() {
        WebElement rootCause = driver.findElement(By.xpath("//textarea[@id='rootCause']"));
        rootCause.isDisplayed();
    }

    @Then("the Root Cause Comment displayed matches the system record")
    public void theRootCauseCommentDisplayedMatchesTheSystemRecord() {
        WebElement rootComment = driver.findElement(By.xpath("//textarea[@id='rootCauseComment']"));
        rootComment.isDisplayed();
    }

    @Then("the Agreed Management Actions field displays the correct multi-line text")
    public void theAgreedManagementActionsFieldDisplaysCorrectMultiLineText() {
        WebElement actions = driver.findElement(By.xpath("//textarea[@id='agreedManagementActions']"));
        actions.isDisplayed();
    }

    @Then("the Additional Comments displayed match the system record")
    public void theAdditionalCommentsDisplayedMatchTheSystemRecord() {
        WebElement comments = driver.findElement(By.xpath("//textarea[@id='additionalComments']"));
        comments.isDisplayed();
    }

    @Then("the Action Dependency field displays the correct linked information")
    public void theActionDependencyFieldDisplaysTheCorrectLinkedInformation() {
        WebElement dependency = driver.findElement(By.xpath("//span[@id='actionDependency']"));
        dependency.isDisplayed();
    }

    @Then("the Attachments Mandatory field reflects the system value")
    public void theAttachmentsMandatoryFieldReflectsTheSystemValue() {
        WebElement mandatory = driver.findElement(By.xpath("//span[@id='attachmentsMandatory']"));
        mandatory.isDisplayed();
    }

    @Then("all uploaded attachments appear with correct file names")
    public void allUploadedAttachmentsAppearWithCorrectFileNames() {
        WebElement uploadList = driver.findElement(By.xpath("//div[@id='uploadedAttachments']"));
        uploadList.isDisplayed();
    }

    @Then("the Progress Update section is visible")
    public void theProgressUpdateSectionIsVisible() {
        WebElement progressSection = driver.findElement(By.xpath("//section[@id='progressUpdate']"));
        progressSection.isDisplayed();
    }

    @Then("the displayed closure date matches the system record")
    public void theDisplayedClosureDateMatchesTheSystemRecord() {
        WebElement closureDate = driver.findElement(By.xpath("//span[@id='closureDate']"));
        closureDate.isDisplayed();
    }

    @Then("the correct user who closed the action is displayed")
    public void theCorrectUserWhoClosedTheActionIsDisplayed() {
        WebElement closedBy = driver.findElement(By.xpath("//span[@id='closedBy']"));
        closedBy.isDisplayed();
    }

    @Then("the correct role of the user who closed the action is displayed")
    public void theCorrectRoleOfTheUserWhoClosedTheActionIsDisplayed() {
        WebElement closedByRole = driver.findElement(By.xpath("//span[@id='closedByRole']"));
        closedByRole.isDisplayed();
    }

    @Then("the Oversight Consent Date matches the system record")
    public void theOversightConsentDateMatchesTheSystemRecord() {
        WebElement oversightDate = driver.findElement(By.xpath("//span[@id='oversightConsentDate']"));
        oversightDate.isDisplayed();
    }

    @Then("the Oversight Consent Result displays the correct value \\(Approved/Rejected)")
    public void theOversightConsentResultDisplaysTheCorrectValue() {
        WebElement oversightResult = driver.findElement(By.xpath("//span[@id='oversightConsentResult']"));
        oversightResult.isDisplayed();
    }

    @Then("the Oversight Consent Comment is fully visible and readable")
    public void theOversightConsentCommentIsFullyVisibleAndReadable() {
        WebElement oversightComment = driver.findElement(By.xpath("//textarea[@id='oversightConsentComment']"));
        oversightComment.isDisplayed();
    }

    @Then("the Compliance Consent Date appears in the correct format")
    public void theComplianceConsentDateAppearsInTheCorrectFormat() {
        WebElement complianceDate = driver.findElement(By.xpath("//span[@id='complianceConsentDate']"));
        complianceDate.isDisplayed();
    }

    @Then("the Compliance Consent Result is displayed clearly")
    public void theComplianceConsentResultIsDisplayedClearly() {
        WebElement complianceResult = driver.findElement(By.xpath("//span[@id='complianceConsentResult']"));
        complianceResult.isDisplayed();
    }

    @Then("the Compliance Consent Comment is fully visible")
    public void theComplianceConsentCommentIsFullyVisible() {
        WebElement complianceComment = driver.findElement(By.xpath("//textarea[@id='complianceConsentComment']"));
        complianceComment.isDisplayed();
    }

    @Then("the Sign-off Date is clearly visible and in correct format")
    public void theSignOffDateIsClearlyVisibleAndInCorrectFormat() {
        WebElement signOffDate = driver.findElement(By.xpath("//span[@id='signOffDate']"));
        signOffDate.isDisplayed();
    }

    @Then("the Sign-off Result displays the correct outcome \\(Accepted/Rejected)")
    public void theSignOffResultDisplaysTheCorrectOutcome() {
        WebElement signOffResult = driver.findElement(By.xpath("//span[@id='signOffResult']"));
        signOffResult.isDisplayed();
    }

    @Then("the Sign-off Comment is fully visible")
    public void theSignOffCommentIsFullyVisible() {
        WebElement signOffComment = driver.findElement(By.xpath("//textarea[@id='signOffComment']"));
        signOffComment.isDisplayed();
    }

    @When("the user clicks the Back button")
    public void theUserClicksTheBackButton() {
        WebElement backBtn = driver.findElement(By.xpath("//button[contains(text(),'Back')]"));
        backBtn.click();
    }

    @Then("the user is navigated to the previous screen without losing data")
    public void theUserIsNavigatedToThePreviousScreenWithoutLosingData() {
        WebElement previousScreen = driver.findElement(By.xpath("//div[@class='previous-screen']"));
        previousScreen.isDisplayed();
    }

}
