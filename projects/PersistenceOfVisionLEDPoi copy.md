---
layout: project
type: project
image: img/projectPics/led_poi.jpeg
title: "POV Poi"
date: 2019
published: true
labels:
  - Arduino
  - Persistence of Vision
  - Addressable LED's
  - ESP32
  - FastLED
  - Fusion360
  - Altium
summary: "LED lightsticks that can display the contents of Bitmap images as they move through space by leveraging the Persistence of Vision effect"
---
This project was my first deep dive into developing an IoT device, and ultimately was the impetus to entering into the Computer Engineering program at University of Hawaii at Manoa.

I first saw a similar project in 2017 being used in a performance to display pixel art images such as Mario, and Waves and was fascinated by how addressable led's could effectively paint pictures in thin air by taking advantage of the persistence of vision effect.  

Persistence of vision (PoV) is the phenomenon where an image continues to be perceived for a brief moment after the source of the image has been removed. This is the principle that allows motion pictures and animation to appear smooth and seamless. It occurs because the human eye and brain retain a visual impression of an object for a fraction of a second after the object is no longer in view. This allows the brain to process a series of rapidly changing images as a single, continuous motion.

This project uses APA102/SK9822 addressable RGB LED's.  These small surface mount LED's utilize a +5V V_in, and a Serial Clk and Serial Data Line.  The wiring is such that a string of LED's are connected serially with Clk_out->Clk_in and Data_out->Data_in.  

A microcontroller sends information for the entire string to the first LED in the string via serial communication and the first LED's controller strips off the 4-Bytes of the stream needed to assign an RGB value to its LED, and passes through the remainder of the input serial stream to the next LED in-line.  See [here](https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/) for a good description of the serial data scheme.

This allows any LED in a string to be assigned a 3-Byte RGB value with an incredibly quick refresh rate.  So fast, in fact, that the PoV effect can be realized.

The controller in this project is a tinyPico development board which makes use of an ESP32-Pico-D4.  

The integration of these components was accomplished using a simple carrier board that simply used the existing development module footprints and connected them to their various voltage sources and GPIO pins.  This carrier board approach was take to minimize the ammount of wired connections in an effort to make the final result cleaner, and to serve as a simple prototype to test the circuit prior to integrating all of the components into a single board layout.

Other hardware features/peripherals included on the carrier board include:
- A charge controller suitable for regulating the +5V micro-USB V_in to an appropriate charge voltage and current to manage a 300mAH LiPo Battery
- A 3v3 voltage regulator to supply power to the esp32, mpu, and RGB strip (note, APA102's nominal V_in = 5V!)
- An MPU-6050 Accelerometer/Gyrometer to sense angular position and acceleration to be used for modulating effects
- A couple MOSFET's used as digitally actuated switches to control supply currents to both the LED Strip and MPU Peripheral
- A Push-button that is used to control the state and options of the controller.

Currently this project displays Bitmap images mounted to the local ROM.  During the startup sequence the controller will build an array of vectors containing the RGB information for each of the images in memory into heap memory.  The microcontroller is programmed as a simple state machine that can switch between image patterns and programs through the push-button interface.  There is also click-type sensing implemented to allow different modes such as brightness adjustment and pattern-auto-play to take place.

My future plans with this project, when I get a chance, include switching the file management system over to tinyFS, transitioning away from the FastLED library to a custom built LED driver, and incorporating IoT features such as device synchronization and server connectivity to facilitate the transfer of images and settings files.

[Link to Github Project Page](https://github.com/CalebMueller-UH/pov-poi)
