---
layout: project
type: project
image: img/projectPics/network_sim.png
title: "Network Simulator"
date: 2023
published: true
labels:
- EE367L Final Project
- C, Make
- Network Simulator
summary: "This is a console network simulator that runs allows network nodes operating on differing processes and instances of the application to communicate using a packet structure "
---
Network Simulator Project Overview

Introducing the Network Simulator Project, a vital component of UH Manoa's EE367-L Data Structures and Algorithms course. This sophisticated network simulator initializes from configuration files that define diverse network topologies. Users can explore and interact with individual hosts in a simulated network using the manager interface, which communicates via pipes or sockets.
Key Features

The manager interface is able to interact with a single host at a time.  When the manager selects an active hose, the user is able to issue that node a menu of single letter commands that cause the manager, and by extension the host to perform certain tasks.  
Those commands are:

    's': View the current host's state
    'm': Define the active host's file directory
    'h': Display all hosts within the network
    'c': Switch the active host being managed
    'p': Initiate a ping from the active host to another
    'u': Upload a file from the active host's directory to another host's directory
    'd': Download a file to the active host's directory from another host's directory
    'a': Register a domain name alias with a DNS server node
    'q': Exit the program

Additionally, the project implements two other network node types that don't directly interact with the manager:

    Switches: Manage packet forwarding and broadcasting between connected network nodes, maintains a routing table for host IDs and port number, and implements something similar to the spanning tree protocol to optimize data paths within a topology.
    DNS Server: Stores and retrieves domain names registered by hosts with the DNS server.

The project's links can be implemented in two ways:

    Pipes: Facilitate inter-process communication between nodes on the same machine
    Sockets: Enable communication between nodes on different machines

Installation and Usage

Follow these steps to install and utilize the Network Simulator Project:
Building the Project

    Clone the repository to your local machine.
    Navigate to the project's root directory.
    Open the Makefile in a text editor to review available options and settings.
    Execute the make command to build the project. This compiles the C source files using the compiler and flags defined in the Makefile, generating the output executable files.

Makefile Commands

The included Makefile streamlines the compilation and execution process with various commands, such as:

    make: Compiles the entire project into two executable binaries (net367 with debug messages disabled and net367debug with debug messages enabled)
    make clean: Removes executables and object files from previous compilations
    make regen: Deletes previous binaries and executables, compiles both net367 and net367debug binaries, and resets the TestDir* files to their initial content
    make regen_d: Functions like regen, but only compiles the net367_debug binary
    make run: Executes the net367 binary with the default config file set by the option DEFAULT_CONFIG
    make debug: Functions like run, but with the net367debug binary

Running the Project

After building the project, execute it with the following commands:

    For the non-debug executable: ./net367 <config file>
    For the debug-enabled executable: ./net367debug <config file>

This launches the network simulator, allowing interaction via the manager interface.

*Note: Configuration files for various network topologies reside in the root directory. Modify the $(DEFAULT_CONFIG) in the Makefile to use a different file with 'make run' or 'make debug', or specify another configuration file when executing the binaries directly.

License
This project is licensed under the MIT License.

[Project Page on Github](https://github.com/CalebMueller-UH/lab5)
