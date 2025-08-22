# purkinje-device
Code that drives the Purkinje Device.

## The Purkinje Device
The Purkinje Device is a very simple electronic device that causes the user to experience a form of hallucination known as a [Purkinje image](https://en.wikipedia.org/wiki/Purkinje_images).

These hallucinations are visually induced perceptual disturbances, such as patterns of geometric shapes, colors, or spirals, that occurs when a person is exposed to a certain kind of flickering or stroboscopic light.

> [!NOTE]
> This [entoptic phenomenon](https://en.wikipedia.org/wiki/Entoptic_phenomenon) was first documented by [Jan Evangelista Purkinje](https://en.wikipedia.org/wiki/Jan_Evangelista_Purkyně) in 1819.

The physical device is simply two banks of LEDs--one for each eye--driven by an Arduino. The code drives the LED such that:


### Color (Light Frequency)
White LEDs are most commonly used. Red LEDs (around 660nm wavelengths) can be particularly effective as they penetrate closed eyelids well.


### Brightness
High-intensity LED at (15,000+ mcd) can be used for good eyelid penetration.


### Blinking Frequency
The LEDs flash such that they are on for 3ms and then off for varying intervals to create different visual effects. My anecdotal, empirical findings are:

* 50ms: splotches of color.
* 40ms: lots of fast-changing vivid colors.
* 35ms: milder colors, line patterns (rings, etc.)
* 25ms: white with line patterns.

The research literature aligns pretty well with my results:

* 25-35ms off periods (26-36 Hz) producing line patterns matches known optimal ranges
* 40-50ms off periods (18-23 Hz) producing color effects is consistent with alpha-range stimulation


## Usage
The user simply holds the LEDs in front of their closed eyes to hallucinate. No drugs required!


## To Do
* Migrate from Arduino/Processing to Raspberry Pi/Go (using periph.io)
* Document the LED type/color(s) to use
* Implement command line parameters for setting the between-blinks (off) duration
* Implement "Display Mode" blinking using a normal display


## Citations
* Ffytche, D. H., et al. (2008). "Flashing LED goggles spark visual hallucinations." Photonics Spectra, 42(12), 62-63. This paper describes an experiment that used intensely flashing LEDs to induce visual hallucinations and observed the corresponding brain activity.
