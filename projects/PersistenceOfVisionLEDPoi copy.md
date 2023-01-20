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
  - Addressable LEDs
  - ESP32
  - FastLED
  - Fusion360
  - Altium
summary: "LED lightsticks that can display the contents of Bitmap images as they move through space by leveraging the Persistence of Vision effect."
---

<img width="750px" class="rounded float-start pe-4" src="/img/projectPics/lightSticks.jpg">

## Overview
This project marked my first dive into developing an IoT device and ultimately inspired me to pursue a Computer Engineering degree at the University of Hawaii at Manoa.  In 2017, I came across a similar project that used addressable LEDs to display pixel art images and wave patterns, utilizing the persistence of vision (PoV) effect.  PoV is the phenomenon where an image continues to be perceived for a brief moment after the source of the image has been removed, allowing the brain to process a series of rapidly changing images as a single, continuous motion.

#### Addressable LEDs
I utilized APA102/SK9822 addressable RGB LEDs for this project.  These small surface-mount LEDs use a +5V V_in and a Serial Clk and Serial Data Line.  The wiring connects a string of LEDs serially, with Clk_out->Clk_in and Data_out->Data_in.  A microcontroller sends information for the entire string to the first LED in the series via serial communication, and the first LED's controller assigns an RGB value to its LED and passes the remaining input serial stream to the next LED in the string.  This allows any LED in a string to be assigned a 3-Byte RGB value with a rapid refresh rate.  See [here](https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/) for a good description of the serial data scheme.

#### Microcontroller/SOC
The controller for this project is a tinyPico development board that utilizes an ESP32-Pico-D4.  I designed a simple carrier board that connects the development module footprints to their various voltage sources and GPIO pins to minimize wired connections and make the final result cleaner.  The carrier board also served as a simple prototype to test the circuit before integrating all components into a single board layout.

#### Carrier Board Details
Other hardware features/peripherals on the carrier board include:
- A charge controller for regulating the +5V micro-USB V_in to an appropriate charge voltage and current to manage a 300mAH LiPo Battery
- A 3v3 voltage regulator to supply power to the esp32, MPU, and RGB strip
- An MPU-6050 Accelerometer/Gyrometer to sense angular position and acceleration to modulate effects
- MOSFETs used as digitally actuated switches to control supply currents to the LED Strip and MPU peripheral, and a push-button that controls the state and options of the controller.

#### Current Functionality
Currently, this project displays Bitmap images mounted to the local ROM.  During the startup sequence, the controller builds an array of vectors containing the RGB information for each image in memory into heap memory.  The microcontroller is programmed as a simple state machine that can switch between image patterns and programs through the push-button interface.  A click-type sensing algorithm is implemented into the button control code, which can differentiate between single clicks, double clicks, and long presses.  This feature allows different modes, such as brightness adjustment and pattern-auto-play to be set with the single-button interface. 

#### Plans for the Future
In the future, I plan to:
- Switch from using the SPIFFS file system over to tinyFS
- Transition away from the FastLED library to a lighter-weight custom LED driver
- Incorporate IoT features such as device synchronization and server connectivity to facilitate the transfer of images and settings files
- Develop a mobile app or web-based GUI to control the device wirelessly.

[Link to Github Project Page](https://github.com/CalebMueller-UH/pov-poi)
