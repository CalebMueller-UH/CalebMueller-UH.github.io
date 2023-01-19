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

<img width="750px" class="rounded float-start pe-4" src="/img/projectPics/lightSticks.jpg">

## POV Lightsticks
This project marked my first deep dive into developing an IoT device and ultimately inspired me to pursue a Computer Engineering degree at the University of Hawaii at Manoa. In 2017, I came across a similar project that used addressable LED's to display pixel art images and wave patterns, utilizing the persistence of vision (PoV) effect. PoV is the phenomenon where an image continues to be perceived for a brief moment after the source of the image has been removed, allowing the brain to process a series of rapidly changing images as a single, continuous motion.

#### Addressable LED's
I utilized APA102/SK9822 addressable RGB LED's for this project. These small surface-mount LED's use a +5V V_in and a Serial Clk and Serial Data Line. The wiring connects a string of LED's serially, with Clk_out->Clk_in and Data_out->Data_in. A microcontroller sends information for the entire string to the first LED in the string via serial communication, and the first LED's controller assigns an RGB value to its LED and passes the remaining input serial stream to the next LED in the string.  This allows any LED in a string to be assigned a 3-Byte RGB value with an incredibly quick refresh rate.  So fast, in fact, that the PoV effect can be realized.  See [here](https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/) for a good description of the serial data scheme.

#### Microcontroller/SOC's
The controller for this project is a tinyPico development board that utilizes an ESP32-Pico-D4. I used a simple carrier board that connected the development module footprints to their various voltage sources and GPIO pins, to minimize wired connections and make the final result cleaner. The carrier board also served as a simple prototype to test the circuit before integrating all of the components into a single board layout.

#### Carrier Board Details
Other hardware features/peripherals on the carrier board include: a charge controller for regulating the +5V micro-USB V_in to an appropriate charge voltage and current to manage a 300mAH LiPo Battery, a 3v3 voltage regulator to supply power to the esp32, mpu, and RGB strip, an MPU-6050 Accelerometer/Gyrometer to sense angular position and acceleration to modulate effects, MOSFETs used as digitally actuated switches to control supply currents to the LED Strip and MPU peripheral, and a push-button that controls the state and options of the controller.

#### Current Functionality
Currently, this project displays Bitmap images mounted to the local ROM. During the startup sequence, the controller builds an array of vectors containing the RGB information for each image in memory into heap memory. The microcontroller is programmed as a simple state machine that can switch between image patterns and programs through the push-button interface. There is also a click-type sensing algorithm implemented into the button control code which can differentiate between single-clicks, double-clicks, and long presses.  This feature allows different modes such as brightness adjustment and pattern-auto-play to be set with a the single-button interface. 

#### Plans for the Future
In the future, I plan to switch the file management system over to tinyFS, transition away from the FastLED library to a custom-built LED driver, and incorporate IoT features such as device synchronization and server connectivity to facilitate the transfer of images and settings files, as well as develop either a mobile app or web based GUI to control the device the device wirelessly.

[Link to Github Project Page](https://github.com/CalebMueller-UH/pov-poi)
