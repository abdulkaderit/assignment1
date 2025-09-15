abstract class Appliance {
  void turnOn();   // abstract method
  void turnOff();  // abstract method
}

// Subclass: Fan
class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan has been turned off.");
  }
}

// Subclass: Light
class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

void main() {
  // Create objects
  Fan fan = Fan();
  Light light = Light();

  // Call their methods
  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}
