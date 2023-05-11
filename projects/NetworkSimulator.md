---
layout: project
type: project
image: img/projectPics/animal_farm_full.jpg
title: "Network Simulator"
date: 2023
published: true
labels:
- EE367L Final Project
- C, Make
- Network Simulator
summary: "This is a console network simulator that runs allows network nodes operating on differing processes and instances of the application to communicate using a packet structure "
---
# Network Simulator Project

This project is part of the UH Manoa's EE367-L Data Structures and Algorithms course, and it is a network simulator that initializes itself from configuration files that describe different network topologies. The simulator allows users to interact with a single host at a time using an interface called the manager, which communicates to the various hosts within a simulated network using pipes or sockets.

## Features

The manager interface allows the user to issue single letter commands, which include:

- 's': displays the current host's state
- 'm': sets the active host's file directory
- 'h': displays all of the hosts in a network
- 'c': changes the active host that the manager is interacting with
- 'p': has the active host ping another host
- 'u': has the active host upload a file from its set file directory to another host's set file directory
- 'd': downloads a file from another host's file directory to the active host's file directory
- 'a': registers a domain name alias with a DNS server node in the network
- 'q': quits the program

Aside from hosts, two other network node types are implemented in this project that don't directly interact with the manager:

- Switches: responsible for forwarding and broadcasting packets between connected network nodes. These nodes keep track of a routing table that associates the host ID's with link ports.
- DNS Server: keeps a nametable that can store and retrieve domain names that are registered with the DNS server at the direction of the manager-controlled active host.

The links of this project can be implemented in two different ways:

- Pipes: useful for inter-process communication between nodes on the same machine
- Sockets: allow communication between nodes on different machines

## Installation and Usage

To install and use the network simulator project, follow these steps:
Building the Project

- Clone the repository to your local machine.
- Navigate to the root directory of the project.
- Open the Makefile in a text editor and review the available options and settings.
- Run the make command to build the project. This will compile the C source files using the compiler and flags defined in the Makefile, and create the output executable files.

## Makefile Details

The included Makefile includes various commands to ease the process of compilation and execution of this project.

Some of these commands are as follows:

	● make
		▹ Will compile the entire project into two executable binaries:
			- net367		-- Debug messages disabled
			- net367debug	-- Debug messages enabled

	● make clean
		▹ Delete the executables and object files from previous compilations

	● make regen
		▹ First deletes all previously compiled binaries and executables
		▹ Next it compiles both the net367 and net367debug binaries
		▹ It then resets the TestDir* files to their initial content

	● make regen_d
		▹ Does the same as regen, but only compiles the net367_debug binary

	● make run
		▹ Executes the net367 binary with the default config file
			set by the option DEFAULT_CONFIG = <default config file>

	● make debug
		▹ Does the same as run, but with the net367debug binary


## Running the Project

Once you have built the project, you can run it using the following commands:

For the non-debug executable run `./net367 <config file>`

For the debug enabled executable run `./net367debug <config file>`


This will start the network simulator and allow you to interact with it using the manager interface.

Note: The configuration files for different network topologies are located in the root directory. You can specify a different configuration file to use by replacing the  $(DEFAULT_CONFIG) in the makefile to run with 'make run' or 'make debug', or simply specifying another configuration file when directly executing the binaries

## License

This project is licensed under the [MIT License](LICENSE).

[Project Page on Github](https://github.com/CalebMueller-UH/lab5)
