package hu.masterfield.testautomation.testcases;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class TescoBevasarlas {

    private WebDriver driver;
    private WebDriverWait wait;

    @Before
    public void setup() {
        // setup Selenium webdriver
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        ChromeOptions options = new ChromeOptions();

        driver = new ChromeDriver(options);
        wait = new WebDriverWait(driver, Duration.ofSeconds(5));

        driver.manage().window().setSize(new Dimension(1024, 768));

    }

    @After // io.cucumber csomagbol!    // @AfterStep, @AfterAll
    public void cleanup() {
        driver.quit();
    }

    @Given("^language is set to \"([^\"]*)\"$") // regular expression
//    @Given("language(s) is set to {string}")       // Cucumber expression
    public void languageIsSetTo(String lang) throws Throwable {
        WebElement languagetable = wait.until(driver -> driver.findElement(By.cssSelector("#utility-header-language-switch-link")));
        if(lang.equals("hungarian")) {
            // click the hungarian flag
            languagetable.findElement(By.cssSelector("#utility-header-language-switch-link > <span class=\"base-components__BaseElement-sc-1mosoyj-0 styled__TextSpan-rsekm1-4 oznwo cUpzQU beans-button__text\">English</span>")).click();
        }
        if(lang.equals("english")) {
            // click the english flag
            languagetable.findElement(By.cssSelector("#utility-header-language-switch-link > <span class=\"base-components__BaseElement-sc-1mosoyj-0 styled__TextSpan-rsekm1-4 oznwo cUpzQU beans-button__text\">Magyar</span>")).click();
        }
    }
    @When("^change the language to \"([^\"]*)\"$")
    public void changeTheLanguageTo(String lang) throws Throwable {
        languageIsSetTo(lang);
    }
    @Given("open main page")
    public void openMainPage() {
        driver.get("https://bevasarlas.tesco.hu/groceries/");
        wait.until(driver -> driver.findElement(By.xpath("/html/body/div[1]/div/div/div[2]/div/header/div/div[1]/div[2]/a/svg")));
    }
    @And("clear cookie cache")
    public void deleteAllCookies(){
            driver.manage().deleteAllCookies();
        throw new io.cucumber.java.PendingException();
    }

    @And("accept cookies")
    public void acceptCookies() {
       driver.findElement(By.xpath("//*[@id=\"sticky-bar-cookie-wrapper\"]/span/div/div/div[2]/form[1]/button/span")).click(); // Accept button
       //driver.findElement(By.xpath("button[text()='Accept' or text()='Elfogadom']")).click();
    }

   }

