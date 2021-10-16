package br.com.chronosacademy.steps;

import br.com.chronosacademy.core.Driver;
import br.com.chronosacademy.pages.NewAccountPage;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;

import java.util.Map;

public class NewAccountSteps {
    NewAccountPage newAccountPage;


    @Dado("que a pagina new acconut esteja sendo exibida")
    public void queAPaginaNewAcconutEstejaSendoExibida() {
        Driver.getDriver().get("https://www.advantageonlineshopping.com/#/register");
        newAccountPage = new NewAccountPage();
    }
    @Quando("os campos de cadastro estiverem preenchidos com")
    public void osCamposDeCadastroEstiveremPreenchidosCom(Map<String, String> map) {

    }
    @Entao("deve ser possivel logar no sistema apos o cadastro")
    public void deveSerPossivelLogarNoSistemaAposOCadastro() {

    }
}
