package calculator;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;
    private boolean isValue1Initialized = false;

    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^I have entered (-?\\d+) into the calculator$")
    public void iHaveEnteredIntoTheCalculator(int arg){
        if(!isValue1Initialized) value1 = arg;
        else value2 = arg;
        isValue1Initialized = true;
    };

    @Given("^Two input values, (-?\\d+) and (-?\\d+)$")
    public void twoInputValuesAnd(int arg0, int arg1){
        value1 = arg0;
        value2 = arg1;
    };


    @When("^I add the two values$")
    public void iAddTheTwoValues() {
        result = calculator.add(value1, value2);
        System.out.println(result);
    }

    @When("^I press (.)$")
    public void iPress(String operator) {
        switch (operator) {
            case "*":
                result = calculator.multiply(value1, value2);
                break;
            case "/":
                result = calculator.divide(value1, value2);
                break;
            case "^":
                result = calculator.power(value1, value2);
                break;
            default:
                throw new IllegalArgumentException("Unsupported operator: " + operator);
        }
    }

    @Then("^I expect the result (\\d+)$")
    public void iExpectTheResult(int arg0) {
        Assert.assertEquals(arg0, result);
    }

}
