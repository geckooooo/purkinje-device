# purkinje-device
Code that drives the Purkinje Device.

## The Purkinje Device
The Purkinje Device is a very simple electronic device that causes the user to experience a form of hallucination known as a [Purkinje image](https://en.wikipedia.org/wiki/Purkinje_images).

These hallucinations are visually induced perceptual disturbances, such as patterns of geometric shapes, colors, or spirals, that occurs when a person is exposed to a certain kind of flickering or stroboscopic light.

> [!NOTE]
> This [entoptic phenomenon](https://en.wikipedia.org/wiki/Entoptic_phenomenon) was first documented by [Jan Evangelista Purkinje](https://en.wikipedia.org/wiki/Jan_Evangelista_Purkyně) in 1819.

The physical device is simply two banks of LEDs--one for each eye--driven by an Arduino. The code drives the LED such that:

- The light frequency itself is (?)
- The LEDs flicker such that they are on for 3ms, and then off for vary intervals to create different visual images. My anecdotal, empirical findings are:

- 50ms: splotches of color.
- 40ms: lots of fast-changing vivid colors.
- 35ms: milder colors, line patterns (rings, etc.)
- 25ms: white with line patterns.

### Usage
The user simply holds the LEDs in front of their closed eyes to hallucinate. No drugs required!

### To Do
- Migrate from Arduino/Processing to Raspberry Pi/Go
- Document the LED type/color to use
- Implement command line parameters for setting the between-blinks (off) duration
