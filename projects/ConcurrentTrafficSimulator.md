---
layout: project
type: project
image: img/projectPics/traffic_lights.jpg
title: "Concurrent Traffic Simulator"
date: 2020
published: true
labels:
    - Traffic-simulation
    - Concurrency
    - Mutexes, Locks, & Thread-Safe Communication
    - Message & Thread Queues    
    - Move Semantics
summary: "The Concurrent Traffic Simulation project is the fourth project in the Udacity C++ nanodegree program. The goal of the project was to create a traffic simulation that features vehicles moving along streets and crossing intersections using concurrent programming."
---

<img width="450px" class="rounded float-start pe-4" src="/img/projectPics/traffic_sim.gif">

## Overview
The Concurrent Traffic Simulation project is the fourth project in the Udacity C++ nanodegree program, which deals with concurrency. The goal of the project is to create a traffic simulation that features vehicles moving along streets and crossing intersections, complete with modeled traffic lights at said intersections. This project uses thread-safe communication protocols between vehicles and intersections to run the simulation concurrently and makes use of CMake, Make, OpenCV, GCC/G++, mutexes, locks, and message queues to accomplish this.  
<br></br>

#### Building up the TrafficObject Framework
The project is divided into several tasks, starting with Task FP.1, which defines a class TrafficLight that is a child class of TrafficObject. The class has the public methods void waitForGreen() and void simulate() as well as TrafficLightPhase getCurrentPhase(), where TrafficLightPhase is an enum that can be either red or green. The class also includes a private method void cycleThroughPhases() and a private member _currentPhase which can take red or green as its value.  
<br></br>

#### Modeling Traffic Light Behavior
Task FP.2 implements an infinite loop that measures the time between two loop cycles and toggles the current phase of the traffic light between red and green, and sends an update method to the message queue using move semantics. The cycle duration is a random value between 4 and 6 seconds, and the while-loop uses std::this_thread::sleep_for to wait 1ms between two cycles. The private method cycleThroughPhases is started in a thread when the public method simulate is called, using the thread queue in the base class.  
<br></br>

#### MessageQueues
Task FP.3 defines a class MessageQueue which has the public methods send and receive. Send takes an rvalue reference of type TrafficLightPhase, whereas receive returns this type. The class also defines an std::dequeue called _queue, which stores objects of type TrafficLightPhase, as well as an std::condition_variable and an std::mutex as private members.  
<br></br>

#### Mutex Functionality & Move Semantics
Task FP.4 implements the method Send, which uses the mechanisms std::lock_guard<std::mutex> as well as _condition.notify_one() to add a new message to the queue and sends a notification. In class TrafficLight, it creates a private member of type MessageQueue for messages of type TrafficLightPhase and uses it within the infinite loop to push each new TrafficLightPhase into it by calling send in conjunction with move semantics.  
<br></br>

#### Interprocess Coordination via Asynchronous Task Execution
Task FP.5, the method receive uses std::unique_lockstd::mutex and _condition.wait() to wait for and receive new messages and pull them from the queue using move semantics. The received object is then returned by the receive function. Then, it adds the implementation of the method waitForGreen, in which an infinite while-loop runs and repeatedly calls the receive function on the message queue. Once it receives TrafficLightPhase::green, the method returns.  
<br></br>

#### Project Keystone: Making the Lights Go 'Round
Finally, Task FP.6, In class Intersection, adds a private member _trafficLight of type TrafficLight. In method Intersection::simulate(), it starts the simulation of _trafficLight. In method Intersection::addVehicleToQueue, it uses the methods TrafficLight::getCurrentPhase and TrafficLight::waitForGreen to block the execution until the traffic light turns green.  
<br></br>

[Link to Github Project Page](https://github.com/CalebMueller/Udacity-C-Nanodegree--Concurrent-Traffic-Simulation)
