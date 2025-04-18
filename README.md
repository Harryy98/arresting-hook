# 🪝 FiveM Arresting Hook System

This script simulates an aircraft arresting hook system. When players land on a designated spot at a certain speed, the system gradually reduces their speed to simulate carrier hook catching.

---

## ✨ Features

- Detects aircraft approaching at high speeds
- Slows aircraft gradually to simulate arresting hook
- Simple and immersive for carrier RP scenarios
- Uses `ox_lib` for clean on-screen notifications

---

## 🔧 Setup

### 1. Installation

Place the script in a folder called `arresting-hook` or similar inside your server’s `resources` directory.

### 2. Start the resource

Add to your `server.cfg`:

```cfg
ensure ox_lib
ensure arresting-hook
```

---

## 🚁 How it Works

- The system checks if an aircraft is within **8 meters** of the hook point at **≥ 35.76 speed**.
- If matched, it triggers a speed reduction sequence with delays, mimicking a hook.
- The location is currently hardcoded to:
  ```
  vector3(3087.96, -4784.29, 15.26)
  ```

---

## 🔧 Customization

In `client.lua`, you can edit the following:

### Change Hook Location
```lua
local hookCoords = vector3(3087.96, -4784.29, 15.26)
local hookRadius = 8.0
```

### Change Speed Threshold
```lua
local minSpeed = 35.76
```

### Adjust Deceleration Curve
```lua
local reduceSpeeds = {53.2, 32.0, 21.0, 15.0, 11.0, 0.0}
local reduceDelays = {500, 1100, 1100, 1100, 800}
```

---

## 📦 Requirements

- [`ox_lib`](https://github.com/overextended/ox_lib)  
Make sure you start `ox_lib` before this script and have it properly installed.
