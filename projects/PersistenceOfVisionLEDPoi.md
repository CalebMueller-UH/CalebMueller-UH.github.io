---
layout: project
type: project
image: img/cotton/cotton-square.png
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
summary: "LED lightsticks that can draw the contents of JPEG and Bitmap images using addressable RGB LED's by taking advantage of the Persistence of Vision effect"
---

This project was my first deep dive into developing an IoT device, and ultimately was the impetus to entering into the Computer Engineering program at University of Hawaii at Manoa.

I first saw a similar project in 2017 being used in a performance to display pixel art images such as Mario, and Waves and was fascinated by how addressable led's could effectively paint pictures in thin air by taking advantage of the persistence of vision effect.  

Persistence of vision (PoV) is the phenomenon where an image continues to be perceived for a brief moment after the source of the image has been removed. This is the principle that allows motion pictures and animation to appear smooth and seamless. It occurs because the human eye and brain retain a visual impression of an object for a fraction of a second after the object is no longer in view. This allows the brain to process a series of rapidly changing images as a single, continuous motion.

This project uses APA102/SK9822 addressable RGB LED's.  These small surface mount LED's utilize a +5V V_in, and a Serial Clk and Serial Data Line.  The wiring is such that a string of LED's are connected serially with Clk_out->Clk_in and Data_out->Data_in.  A microcontroller sends information for the entire string to the first LED in the string via serial communication and the first LED's controller strips off the 4-Bytes of the stream needed to assign an RGB value to its LED, and passes through the remainder of the input serial stream to the next LED in-line.  See <a href="https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/"><i class="large github icon "> for a good description of the serial data scheme.

This allows any LED in a string to be assigned a 3-Byte RGB value with an incredibly quick refresh rate.  So fast, in fact, that the PoV effect can be realized.

The controller in this project is a tinyPico development board which makes use of an ESP32-Pico-D4.  Other hardware features/peripherals include:
- A charge controller suitable for regulating the +5V micro-USB V_in to appropriate charge voltage and current for a small 300mAH LiPo Battery
- An MPU-6050 Accelerometer/Gyrometer to sense angular position and acceleration to be used for modulating effects
- A couple MOSFET's used as digitally actuated switches to control supply currents to both the LED Strip and MPU Peripheral
- A Push-button that is used to control the state and options of the controller.

The integration of these components was accomplished using a simple carrier board that simply wired the existing development module footprints and wired them appropriately.  This was done to minimize the ammount of wire connections in an effort to make the final result cleaner and easier to assemble and troubleshoot.

Currently this project does work, and will display Bitmap images mounted to the local ROM.  During the startup sequence the controller will build an array of vectors containing the RGB information for each of the images in memory into heap memory.  The show() command will then display the images in correct orientation.

My future plans with this project include switching the file management system over to TinyFS, transitioning away from FastLED to a custom built LED driver, incorporating IoT features such as device synchronization and server connectivity to facilitate the transfer of images and settings files.

Source: <a href="https://github.com/CalebMueller-UH/pov-poi"><i class="large github icon ">