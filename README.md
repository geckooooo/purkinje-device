# purkinje-device
Code that drives the Purkinje Device.

## The Purkinje Device
The Purkinje Device is a very simple electronic device--a form of stroboscopic light stimulation (SLS)--that causes the user to experience a form of hallucination known as a [Purkinje patterns](https://www.photonics.com/Articles/Flashing_LED_goggles_spark_visual_hallucinations/a36056).

These hallucinations are perceptual disturbances, such as patterns of geometric shapes, colors, or spirals, that occurs when a person is exposed to a certain kind of flickering or stroboscopic light.

> [!NOTE]
> This [entoptic phenomenon](https://en.wikipedia.org/wiki/Entoptic_phenomenon) was first documented by the physiologist [Jan Evangelista Purkinje](https://en.wikipedia.org/wiki/Jan_Evangelista_Purkyně) in 1819.

The physical device is simply two banks of LEDs--one for each eye--driven by an Arduino. Each bank can have 20-30 LEDs. I wired them up as two rectangles on the breadboard, shaped and spaced to align my eyes when held up to my face.

The code drives the LEDs such that:


### Color (Light Frequency)
High-intensity white LEDs (5mm or 10mm) can be used. Red LEDs (around 660nm wavelengths) can also be effective as they penetrate closed eyelids well.


### Rhythmicity (Blinking Frequency)
The LEDs flash such that they are on for 3ms and then off for varying intervals to create different visual effects. My anecdotal, empirical findings are:

* 25ms: white with line patterns
* 35ms: milder colors, line patterns (rings, etc.)
* 40ms: lots of fast-changing vivid colors
* 50ms: splotches of color

The research literature aligns pretty well with my results:

* 25-35ms off periods (26-36 Hz) producing line patterns matches known optimal ranges
* 40-50ms off periods (18-23 Hz) producing color effects is consistent with alpha-range stimulation

> [!CAUTION]
> Stroboscopic lights can be dangerous for individuals with photosensitive epilepsy or other neurological conditions, as they can trigger seizures. Be careful out there!


### Light Intensity (Brightness)
High-intensity LED at (15,000+ mcd) can be used for good eyelid penetration.


## Usage
The user simply holds the LEDs in front of their closed eyes to hallucinate. No drugs required!


## Citations
* Ffytche, D. H., et al. (2008). "Flashing LED goggles spark visual hallucinations." Photonics Spectra, 42(12), 62-63. This paper describes an experiment that used intensely flashing LEDs to induce visual hallucinations and observed the corresponding brain activity.


## To Do
* Port the original 2010 Arduino/Processing implementation to Raspberry Pi/Go using [periph.io](https://periph.io)
* Implement command line parameters for setting the blinking frequencies
* Implement "Display Mode" to cause Purkinje hallucinations using a normal computer display
* Investigate using RGBW LEDs
* Add support for varying brightness. research suggests this varies the intensity of the hallucination-inducing effects
* Add support for "programmed sequences" --> lightshow in your mind!
* Document the electronics
