---
layout: essay
type: essay
title: "The Cathedral and the Mound: A Look at Monolithic and Modular Design"
# All dates must be YYYY-MM-DD format!
date: 2023-01-25
published: true
labels:
  - Monolithic vs Modular Design
---
## Introduction

In his book "The Selfish Gene," Richard Dawkins presents a captivating analogy between the construction of a termite mound and the renowned Spanish cathedral, Sagrada Familia. He notes that while termites, through their collective and decentralized efforts, were able to construct a complex and intricate structure that closely resembled the cathedral, the latter was designed and constructed by a central authority using a top-down approach.
<img width="500" class="float-end pe-4" src="/img/essayPics/termiteCathedrals.jpg" alt="Decentralized or centralized management">

This comparison illustrates the fundamental difference between two approaches to organization and design: the decentralized, bottom-up approach of the termites, and the centralized, top-down approach of the cathedral's construction. These two approaches find relevance in many facets of reality, from the organization of social systems to the design of computer systems.  In the context of system design, the two opposing methodologies of centralized and decentralized organization can be characterized as monolithic and modular design, respectively.

In this essay, we will explore the advantages and drawbacks of both monolithic and modular design, compare and contrast the two paradigms, and discuss how to choose the best design paradigm for a specific application.
  
## Monolithic Design
Monolithic design refers to a design paradigm in which all of the components and functionality of a system are integrated into a single unit or module, with little to no separation or distinct boundaries between different subsystems or functionalities. All of the components and functionality of a monolithic system are integrated into a single unit or module. This approach is characterized by a centralized and top-down design process where a core element controls and coordinates the operation of the systems peripheral components.

<img width="300" class="float-start pe-4" src="/img/essayPics/raspberryPi.jpeg" alt="Monolithic Example: Raspberry Pi 4">

An example of a monolithic design used in system design is that of a single-board computer such as the Raspberry Pi. These types of computers include all the necessary components, such as a processor, memory, and input/output interfaces, on a single circuit board.

The advantages of monolithic design include simplicity and ease of integration, as all the components are integrated into one unit, making it easier to understand and maintain. However, a monolithic design also has drawbacks such as inflexibility and lack of scalability. Because the system is dependent on the functionality of that single unit, if one component fails or needs to be upgraded, it can be difficult to do so without disrupting the entire system. In the case of single-board computers, it may be hard to upgrade or add specific components or functionalities without changing the entire board.

## Modular Design
On the other hand, a modular design refers to a technique of breaking down a system into smaller, self-contained modules or components that can be independently designed, tested, and replaced as needed.  This approach is characterized by a decentralized and bottom-up design process, with clear separation and distinct boundaries between different subsystems or functionalities.  As opposed to a monolithic control scheme, a modular design is characterized by a decentralized approach, where there is no central agent controlling the peripheral devices. Instead, each module or component is self-contained and can function independently, with clear separation and distinct boundaries between different subsystems or functionalities. The communication and coordination between modules is achieved through interfaces, rather than a central control mechanism.

An example of a modular design is a smartphone, such as the Google Project Ara. This smartphone allows users to independently replace and upgrade specific components, such as the camera or battery, without having to replace the entire device.

<img width="400" class="float-end pe-4" src="/img/essayPics/Project-Ara-pieces-1.png" alt="Modular Example: Google Project Ara">

A modular system allows for a more flexible and scalable system, as individual modules can be easily replaced or upgraded without disrupting the entire system.  Additionally, modular design allows for the easy addition of new functionalities and components, making the system more adaptable to changing needs. 

However, modular designs also have drawbacks such as complexity, increased cost, and compatibility issues. Because the system is composed of multiple independent modules, it can be more difficult to understand and maintain, and compatibility issues may arise between different modules. In the case of modular smartphones, the cost of purchasing multiple modules and the complexity of assembling them could be a drawback.

## Which is better?
Monolithic design and modular design are two opposing paradigms of system design, each with its own advantages and drawbacks. Monolithic design is characterized by simplicity and ease of integration, but can be inflexible and lack scalability. Modular design, on the other hand, is characterized by flexibility, scalability, and ease of maintenance, but can be complex, costly, and prone to compatibility issues.

<img width="600" class="float-start pe-4" src="/img/essayPics/The-Curiosity-Rover.png" alt="Complex System Benefits from Modularity">

In terms of trade-offs, monolithic design is best suited for small and simple systems where the functionality is unlikely to change over time. On the other hand, modular design is best suited for larger and more complex systems where the functionality is likely to change over time.


A design problem where monolithic design principles lend themselves better is a small embedded system, such as a thermostat. The limited functionality of a thermostat makes it easy to integrate all the necessary components into a single unit, making it simple and easy to understand and maintain.


In contrast, a complex system with functionality that's likely to change would benefit from the use of modular design principles.  An exmample of this would be that of a multipurpose robot that has several mission requirements.  A system with such complexity would make it difficult to integrate all the necessary components into a monolithic design. By breaking the system down into smaller, independently designed and testable modules, the system would benefit from this added flexibility, lending to its scalability, and ease of maintenance over time.

## Conclusion
Choosing whether to use a monolithic or modular design depends on the specific requirements of the system and the trade-offs between simplicity, flexibility, scalability, and ease of maintenance. Monolithic design is more advantageous for small, simple systems where functionality is unlikely to change, while modular design is best suited for larger, complex systems where functionality is likely to change.