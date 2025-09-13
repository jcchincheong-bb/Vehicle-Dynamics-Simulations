# Vehicle Dynamics Simulations
[Project Page](https://jcchincheong-bb.github.io/projects/vehicle-simulations/index/)

A set of general purpose (and some special purpose) simulations for the dynamic behaviour of vehicles in the vertical, lateral and longnitudinal directions.

Done as part of a course on Vehicle Technology taught by [Prof. Dr.-Ing. Dirk Nissing](https://www.hochschule-rhein-waal.de/en/user/7413). 

Simulations are quite rudamentary, but very educational. I did a number of investigations which you can find [here](https://github.com/jcchincheong-bb/Vehicle-Dynamics-Simulations/blob/main/Investigations%20of%20Vehicle%20Dynamics.md). 


## 🔧 Current Features
- Simulation of an Audi Q4 accelerating from rest
  *(see the `Acceleration-Sim/` directory)*
- Simulation of a vehicle braking with and without Antilocking Braking System (ABS)  
  *(see the `Braking-Sim/` directory)*
- Simulation of the famous quarter car model, both the single mass and dual mass variants
    *(see the `QCar-1Mass/` and `QCar-2Mass/` directory)*
- Simple model of the properties of a tire and some basic data analysis using a Gough Diagram
    *(see the `Tire-Model/` directory)*

## 📦 Requirements
- MATLAB R2018b or later
- MATLAB Simulink

## 🚧 Future Work
- Integration of Tire model with acceleration and braking simulations logic
- Simulation of steering kinematics (if I have time)
- Possibly 3D Animations
  
## 📚 References
HEISSING, Bernd and ERSOY, Metin. *Chassis handbook: Fundamentals, Driving Dynamics, components, mechatronics, Perspectives*. Wiesbaden : Vieweg + Teubner, 2011. 
RILL, George. *Vehicle Dynamics Fundamentals and Modeling with MATLAB®*. CRC Press, 2020.
