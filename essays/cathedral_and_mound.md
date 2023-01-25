---
layout: essay
type: essay
title: "The Cathedral and the Mound: Monolithic and Modular Design"
# All dates must be YYYY-MM-DD format!
date: 2023-01-25
published: true
labels:
  - Monolithic vs. Modular Design
---

Richard Dawkins presents a captivating analogy between the construction of a termite mound and the renowned Spanish cathedral, Sagrada Familia, in his book "The Selfish Gene."  He notes that while termites, through collective and decentralized efforts, could construct a complex and intricate structure closely resembling the cathedral, the latter was designed and built by a central authority using a top-down approach.

<img width="500" class="float-end pe-4" src="/img/essayPics/termiteCathedrals.jpg" alt="Decentralized or centralized management">

This comparison illustrates the fundamental difference between two approaches to organization and design: the decentralized, bottom-up approach of the termites and the centralized, top-down approach of the cathedral's construction.  These two approaches find relevance in many facets of reality, from the organization of societies to the design of computers.  The two opposing methodologies of centralized and decentralized organization in systems engineering can be characterized as monolithic and modular design.

This essay will explore the advantages and drawbacks of monolithic and modular design, compare and contrast the two paradigms, and discuss how to choose the best approach for a specific application.
  
## Monolithic Design
Monolithic design refers to a design paradigm in which all of the components and functionality of a system are integrated into a single unit or module, with little-to-no separation or distinct boundaries between different subsystems or functionalities.  This approach is characterized by a centralized, top-down design process where a core element controls and coordinates the operation of the system's peripheral components.

<img width="350" class="float-start pe-4" src="/img/essayPics/raspberryPi.jpeg" alt="Monolithic Example: Raspberry Pi 4">

An example of a monolithic design is a single-board computer such as the Raspberry Pi.  These types of computers include all the components for the computer to operate, such as a processor, memory, and input/output interfaces, on a single circuit board.

The advantages of monolithic design include simplicity and ease of integration, as all the components are included in one unit.  However, a monolithic design also has drawbacks, such as inflexibility and lack of scalability.  In addition, because the system is entirely dependent on the functionality of that single unit, if a component needs repair due to a failure or something on the system later must be upgraded, it can be challenging to do so without disrupting the entire system.  In the case of single-board computers, it may require changing the entire board to upgrade or add specific components or functionalities.

## Modular Design
On the other hand, a modular design refers to breaking down a system into smaller, self-contained modules or components that can be independently designed, tested, and replaced as needed.  This approach is characterized by a decentralized and bottom-up design process, with clear separation and distinct boundaries between different subsystems or functionalities.  Unlike a monolithic control scheme, a modular design uses a decentralized approach, where no central agent controls the peripheral devices.  Instead, each module or component is self-contained and can function independently.  Furthermore, the communication and coordination between modules are achieved through interfaces rather than a central control mechanism.

<img width="400" class="float-end pe-4" src="/img/essayPics/Project-Ara-pieces-1.png" alt="Modular Example: Google Project Ara">

A smartphone, such as Google Project Ara, is an example of a modular design.  This smartphone allows users to independently replace and upgrade specific components, such as the camera or battery, without replacing the entire device.

A modular system allows for a more flexible and scalable system, as individual modules can be easily replaced or upgraded without disrupting the entire system.  Additionally, modular design allows for the easy addition of new functionalities and components, making the system more adaptable to changing needs. 

However, modular designs have drawbacks such as complexity, increased cost, and compatibility issues.  Because the system is composed of multiple independent modules, it can be more challenging to understand and maintain, and compatibility issues may arise between different modules.  In the case of modular smartphones, the cost of purchasing multiple modules and the complexity of assembling them could be a drawback.

## Which is better?
Monolithic and modular design are opposing paradigms, each with advantages and drawbacks.  A Monolithic design's advantage is its' simplicity, but it suffers from being inflexible and difficult to scale.  Modular designs, on the other hand, have more flexibility and scalability but can be complex, costly, and prone to compatibility issues.

<img width="600" class="float-start pe-4" src="/img/essayPics/The-Curiosity-Rover.png" alt="Complex System Benefits from Modularity">

It may not always be obvious which approach is the most optimal.  Monolithic designs are best suited for small and simple systems where the functionality will likely stay the same over time.  On the other hand, a modular design is best suited for larger and more complex systems where the functionality is likely to change.  A small embedded system such as a thermostat is a use-case where a monolithic design would be best suited.  The limited functionality of a thermostat makes it easy to integrate all the necessary components into a single unit, making it simple and easy to understand and maintain.  In contrast, a multipurpose robot with several mission requirements represents a complex system with features that will likely need to change in the future would do well to adopt at least some level of modularity.  Integrating such a system's necessary components into a monolithic design would be challenging and offers little flexibility in adapting the system to future extension.  However, by breaking the system down into smaller, independently designed, and testable modules, the system does gain this added flexibility, which then lends to its scalability and ease of maintenance over time.

When deciding on the best design paradigm for a specific application, it is critical to consider the particular requirements and constraints of the system, as well as the trade-offs between simplicity, flexibility, and scalability.  In some cases, a hybridized system that combines the best of both approaches may be the most suitable solution.  For example, a monolithic core system could control the system's overall functionality by communicating with independent, modular subsystems that are easily replaceable and upgradeable.  Ultimately, the best design paradigm will depend on the specific needs and constraints of the system and the organization implementing it.