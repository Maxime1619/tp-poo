#include <UnitTest++/UnitTest++.h>
#include <PcfLed.h>
#include <pcf8574.h>

SUITE (Led) {
  // Classe LedFixture
  // Permet de définir des variables et constantes qui seront utilisées dans les tests
  // Evite de répéter ces opérations dans chaque test
  class LedFixture {
    public:
      const int id = 4; // identifiant de la led
      const bool anode = false; // led commandée par sa cathode

      TwoWire bus; // bus I²C utilisé, i2c-2 dans la cas du NanoPi4DinBox
      Pcf8574 pcf8574; // Circuit PCF8574 connecté au bus
      PcfLed led; // led est l'instance de la classe PcfLed qui va être utilisée par les tests
      // Constructeur de la classe qui initialise led par un appel au constructeur de PcfLed
      LedFixture() : bus (2), pcf8574 (bus), led (pcf8574, id) {
      }
  };
  // Test de lecture de l'identifiant
  TEST_FIXTURE (LedFixture, get_id) {

    CHECK_EQUAL (led.get_id(), id);
  }
  // Test de lecture de la broche de commande de la led
  TEST_FIXTURE (LedFixture, get_anode) {

    CHECK_EQUAL (led.get_anode(), anode);
  }
  // Test de lecture de l'état de la led
  TEST_FIXTURE (LedFixture, state) {

    led.begin();
    CHECK_EQUAL (led.state(), false);
  }
  // Test de modification de l'état de la led avec set()
  TEST_FIXTURE (LedFixture, set) {

    led.begin();
    led.set (true);
    CHECK_EQUAL (led.state(), true);
    led.set (false);
    CHECK_EQUAL (led.state(), false);
    led.set(); // Test de la valeur par défaut
    CHECK_EQUAL (led.state(), true);
  }
  // Test de modification de l'état de la led avec toggle()
  TEST_FIXTURE (LedFixture, toggle) {

    led.begin();
    CHECK_EQUAL (led.state(), false);
    led.toggle ();
	delay(1000);
    CHECK_EQUAL (led.state(), true);
    led.toggle();
    CHECK_EQUAL (led.state(), false);
  }

}

// run all tests
int main (int argc, char **argv) {

  return UnitTest::RunAllTests();
}
