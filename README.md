🌄 FDF — 3D Wireframe Map Renderer

A 42 Barcelona project · C · MiniLibX · Isometric projection

📌 Overview

FDF is a 3D wireframe viewer written in C using MiniLibX.
It takes a .fdf heightmap file and renders it as a 3D model using isometric projection, allowing rotation, zoom, and real-time transformations.

This project demonstrates fundamental skills in graphics programming, event handling, memory management, coordinate transformations, and rendering pipelines.

🖼️ Preview

(Add a screenshot later if you want — I can help you create one)

        /\         /\ 
       /  \_______/  \   
      /               \     
  ___/___________________\___

🎯 Features

📐 Isometric projection (30°/30° standard)

🔍 Zoom in/out

🎛️ Move / pan the camera

🎨 Color gradients based on altitude

↻ Rotate model in real time (optional depending on your version)

⚙️ Efficient rendering loop using MiniLibX

🧹 Full memory management (no leaks)

✨ Smooth UX with keyboard controls

🧠 What I Learned

Implementing 3D to 2D projection algorithms

Working with MiniLibX (MLX) graphics library

Event handling: keypresses, window close events

Creating a simple rendering pipeline

Parsing text files and building heightmaps

Performance considerations in real-time rendering

Clean architecture and modular design in C

⌨️ Controls
Key	Action
+ / -	Zoom in / out
Arrow keys	Move the map
Q / E	Rotate left / right
W / S	Adjust altitude scaling
ESC	Exit program

(If your version uses slightly different keys, tell me and I update it.)

📂 Project Structure
FDF/
├── src/
│   ├── main.c
│   ├── parser.c
│   ├── render.c
│   ├── projection.c
│   ├── hooks.c
│   ├── utils.c
│   └── colors.c
├── include/
│   ├── fdf.h
├── maps/
│   ├── 42.fdf
│   └── mars.fdf
├── Makefile
└── README.md

🧮 How It Works (Simple Explanation)
1. Parse the map

Each .fdf file contains rows of numbers representing height.

0  0  1  2  3
0  1  2  3  4
2  3  4  5  6


This becomes a 2D matrix in memory.

2. Convert 3D → Isometric 2D

Using the formula:

x_iso = (x - y) * cos(30°)
y_iso = (x + y) * sin(30°) - z

3. Draw pixels using MLX

A custom Bresenham line algorithm draws every connection between points.

🛠️ Installation & Run
1. Clone the repo
git clone https://github.com/zmetreveli/FDF.git
cd FDF

2. Compile
make

3. Run with a map
./fdf maps/42.fdf

🧪 Requirements

macOS or Linux

MiniLibX installed (included in 42 environment)

GCC / Clang

⭐ Future Improvements

Mouse controls (zoom & rotation)

Support for more projection types (parallel, perspective)

Better color gradients

Real-time animations

📝 License

This project is part of the 42 Barcelona curriculum and follows its academic guidelines.

👨‍💻 Author

Zurab Metreveli
📍 Based in Barcelona
🔗 GitHub: https://github.com/zmetreveli

🔗 LinkedIn: https://www.linkedin.com/in/zurab-metreveli
