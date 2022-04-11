# OpenLCR
The goal of this project is to produce an accurate, inexpensive, open-source LCR meter with an original design.

- What is an LCR meter?

A device that measures inductance (L), capacitance (C), and resistance (R).  Typically, LCR meters also measure secondary parameters of circuit components such as equivalent series resistance, quality factor, and leakage resistance.

- How are these quantities measured?

Generally, an LCR meter needs to measure impedance.  A common way of doing this is to apply a known voltage or current to the unknown device under test, and then measure the uncontrolled quantity (current or voltage, respectively) that results.  If the input is sinusoidal at a set frequency, the ratio of the voltage and current amplitudes gives the magnitude of the impedance.  The difference in phase between the two gives the phase of the impedance.  For metrology purposes, this measurement will often just be taken at a single precise frequency, such as 100 Hz, 120 Hz, 1 kHz, 10 kHz, or 100 kHz.  Alternatively, you can measure impedance at many different frequencies and generate a plot of Z vs f.  Either way, this information, combined with a model for the device under test, can be used to calculate model parameters.  In the simplest nontrivial case, a model may consist of a series inductance and resistance (in the case of an inductor), a series capacitance and resistance (in the case of a capacitor), or a network of series RL and parallel C (for a resistor).

- Why make an LCR meter?

I studied analog circuit design for most of my advanced coursework in electrical engineering.  More recently, I took some coursework in microcontrollers.  Along the way, I've gained an appreciation for measurement instrumentation.  I wanted to work on a project that combined all of these topics.  The challenge of precisely measuring component parameters is well-suited for this goal.  It has a well-defined problem and straightforward measurement technique, but the devil is in the details.  Finding suitable components, evaluating them for this application, and just making it work is a valuable exercise in system-level electronics design and prototyping.  Also, being able to take these measurements is useful when making circuits like filters (for which precisely matched resistors and capacitors are essential) or high-frequency circuits (for which characterizing parasitics is essential for accurate modeling).  Regardless of these practical applications for LCR meters, this measurement challenge is just fun!

- Don't low-cost LCR meters already exist?

Probably.  I did a bit of market research at the beginning of this project and was able to find devices that measure L, C, and R along with secondary parameters and even transistor and diode characterization for as little as $30 on Amazon.  The accuracy of such low-cost instruments is not clear though (they make no claims regarding accuracy, have no calibration certification, and contain no datasheet or user manuals), though most devices only display enough information to possibly provide 1% accuracy.  One $30 device I found can measure inductance from 10 uH to 20 H, capacitance from 25 pF to 0.1 F, and resistance from 0.5 ohm to 50 Mohm.  Higher quality devices appear to be available such as battery-powered, handheld, calibrated instruments for $300-$500, including smart tweezers (meant for characterizing primary characteristics and parasitics of surface mount components).  Those instruments claim accuracy on the order of 0.3%.  The range of measured values is something like 1 uH to 1000H for inductors, and unspecified for C and R.  Finally, the highest quality devices are bench-top, rack-mounted, metrology-grade LCR meters.  These devices range in cost from $3,000 (usually used) to $12,000.  Their accuracy is as high as 0.02%, can measure 0.01 mohms to 10 Tohms for R, 0.1 pH to 10GH for L, and 0.1 zF to 10 kF for C.  
[Source](https://www.ietlabs.com/pdf/Datasheets/1693.pdf)

I think it will be interesting to see how accurate of an instrument I can make using a modest budget.  Let's find out!

## Design  (Last updated 4/10/2022)

Here are the circuit schematics for the latest version of the design:

![Image](https://github.com/ryannbrandt/OpenLCR/blob/main/OpenLCRSchematic_v1_04_08_2022-1.png)
![Image](https://github.com/ryannbrandt/OpenLCR/blob/main/OpenLCRSchematic_v1_04_08_2022-2.png)

