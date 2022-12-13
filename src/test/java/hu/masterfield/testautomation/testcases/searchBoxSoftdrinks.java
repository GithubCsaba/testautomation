package hu.masterfield.testautomation.testcases;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class searchBoxSoftdrinks {
    public searchBoxSoftdrinks() {
        @And("^user types in \"([^\"]*)\" \"([^\"]*)\"$", (String arg0, String arg1) -> {
        });

        @Then("^\"([^\"]*)\"soft drinks\"([^\"]*)\" is visible$", (String arg0, String arg1) -> {
        });
    }
}
