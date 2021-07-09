package br.com.chronosacademy.core;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class Driver {
    public WebDriver driver;

    public Driver(String navegador){
        switch (navegador){
            case "chrome":
                WebDriverManager.chromedriver().setup();
                driver = new ChromeDriver();
                break;
            case "firefox":
                WebDriverManager.firefoxdriver().setup();
                driver = new FirefoxDriver();
                break;
            case "edge":
                WebDriverManager.edgedriver();
                driver = new EdgeDriver();
                break;
            case "ie":
                WebDriverManager.iedriver();
                driver = new InternetExplorerDriver();
                break;
        }

        driver.manage().window().maximize();
    }

    public WebDriver getDriver(){
        return driver;
    }
}
