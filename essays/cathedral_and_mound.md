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

The termite mound is a prime example of a decentralized, bottom-up approach to organization and design.  Each termite works independently, yet collectively, to construct a complex and intricate structure.  Each termite plays a small role in the overall construction process, but together they can create something much larger and more impressive than any one termite could accomplish alone.  This is similar to modular design in systems engineering, where multiple smaller components are combined to create a larger system.  Each module is designed and built independently, but when combined, they form a cohesive and functional system.

<img width="500" class="float-end pe-4" src="/img/essayPics/termiteCathedrals.jpg" alt="Decentralized or centralized management">

On the other hand, the Sagrada Familia cathedral is an example of a centralized, top-down approach to organization and design.  The cathedral was designed and built by a central authority using a top-down approach.  The construction process was highly centralized and controlled, with specific plans and guidelines.  This is similar to monolithic design in systems engineering, where one large, all-encompassing system is designed and built from the top down.

By comparing and contrasting these two examples, it becomes clear that monolithic and modular design have their own unique strengths and weaknesses.  Monolithic design is more efficient and straightforward but also more rigid and less adaptable.  Modular design is more versatile and dynamic but is also more complex and harder to control.  The best approach will depend on the specific application and the desired outcomes.  This essay will explore the advantages and drawbacks of monolithic and modular design, compare and contrast the two paradigms, and discuss how to choose the best approach for a specific application.
  
## Monolithic Design
Monolithic design refers to a design paradigm in which all of the components and functionality of a system are integrated into a single unit or module, with little-to-no separation or distinct boundaries between different subsystems or functionalities.  This approach is characterized by a centralized, top-down process where a core element controls and coordinates the operation of the system's peripheral components.

<img width="400" class="float-start pe-4" src="/img/essayPics/raspberryPi.jpeg" alt="Monolithic Example: Raspberry Pi 4">

An example of a monolithic design is a single-board computer such as the Raspberry Pi.  These types of computers contain all the components needed to operate, such as a processor, memory, and I/O interfaces, on a single circuit board.

The advantages of monolithic design include simplicity and ease of integration, as all the components are included in one unit.  However, a monolithic design also has drawbacks, such as inflexibility and lack of scalability.  In addition, because the system is entirely dependent on that single unit, should a component need repair or require upgrading, it can be challenging to do so without redesigning the entire system.  In the case of single-board computers, it may require changing the entire board to upgrade or add components or functionalities.

## Modular Design
On the other hand, a modular design refers to breaking up a system into smaller, self-contained modules or components that can be independently designed, tested, and replaced as needed.  This approach is characterized by a decentralized and bottom-up process, with clear separation and distinct boundaries between different subsystems or functionalities.  Unlike a monolithic control scheme, a modular design uses a decentralized approach, where no central agent controls the peripheral devices.  Instead, each module or component is self-contained and can function independently.  Furthermore, the communication and coordination between modules are achieved through interfaces rather than a central control mechanism.

<img width="400" class="float-end pe-4" src="/img/essayPics/Project-Ara-pieces-1.png" alt="Modular Example: Google Project Ara">

A smartphone, such as Google Project Ara, is an example of a modular design.  This smartphone allows users to independently replace and upgrade specific components, such as the camera or battery, without replacing the entire device.

A modular system allows for a more flexible and scalable system, as individual modules can be easily replaced or upgraded without disrupting the entire system.  Additionally, modular design allows for the easy addition of new functionalities and components, making the system more adaptable to changing needs. 

However, modular designs have drawbacks such as complexity, increased cost, and compatibility issues.  Because the system is composed of multiple independent modules, it can be more challenging to understand and maintain, and compatibility issues may arise between different modules.  In the case of modular smartphones, the cost of purchasing multiple modules and the complexity of assembling them could be a drawback.

## Which is better?
Monolithic and modular design are opposing paradigms, each with advantages and disadvantages.  A Monolithic design's advantage is its' simplicity, but it suffers from being inflexible and difficult to scale.  Modular designs, on the other hand, have more flexibility and scalability but can be complex, costly, and prone to compatibility issues.

<img width="500" class="float-start pe-4" src="/img/essayPics/The-Curiosity-Rover.png" alt="Complex System Benefits from Modularity">

It may not always be obvious which is the optimal approach.  Monolithic designs are best suited for small and simple systems where the functionality will likely stay the same over time.  On the other hand, a modular design is best suited for larger and more complex systems where the functionality is likely to change.  A small embedded system such as a thermostat is a use-case where a monolithic design would be best suited.  The limited functionality of a thermostat makes it easy to integrate all the necessary components into a single unit, making it simple and easy to understand and maintain.  

In contrast, a multipurpose robot with several mission requirements represents a complex system with features that will likely evolve.  Given the complexity of a multipurpose robot with several mission requirements, it's crucial to adopt a modular approach to ensure the system can grow.  One solution could be to implement a hybridized system that combines the benefits of both a monolithic core system and independent, modular subsystems.  For example, the monolithic core system could manage the overall functionality, while the modular subsystems can be easily replaced or upgraded as needed.

When deciding on the best design paradigm for a specific application, it is critical to consider the particular requirements and constraints of the system, as well as the trade-offs between simplicity, flexibility, and scalability.    Ultimately, the best design paradigm will depend on the specific needs and constraints of the system.