const int LED = 13;     // LED driven from pin 13

/*
The "on" duration of the blink, in milliseconds.
*/
int blinkDuration = 5;

/*
The pause between blinks, in milliseconds.

Interesting values:
- 50: splotches of color.
- 40: lots of fast-changing vivid colors.
- 35: milder colors, line patterns (rings, etc.)
- 25: white with line patterns.
*/
int pauseDuration = 35;


void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);     
}

void loop() {
  blink(blinkDuration, pauseDuration);
}

void blink(int blinkDuration, int pauseDuration) {
  digitalWrite(LED, HIGH);   // set the LED on
  delay(blinkDuration);      // wait, while light is on
  digitalWrite(LED, LOW);    // set the LED off
  delay(pauseDuration);      // wait, while light is off
}
