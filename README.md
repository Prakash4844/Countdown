# ⏳ Countdown

A simple, portable countdown timer written in Bash. Basically a more user-friendly alternative to `sleep` with a visible countdown.
Supports **seconds, minutes, and hours** with a clean inline display (not full-screen like `watch`).

Example:

```bash
$ countdown 10s
10S # Updates in place
...
00S # Updates in place
# Script continues with next command
````

---

## 📦 Installation

### Quick Install (Linux & macOS)

```bash
curl -fsSL https://raw.githubusercontent.com/Prakash4844/Countdown/main/install.sh | bash
```

This will install `countdown` into `/usr/local/bin`.

### Manual Install

```bash
git clone https://github.com/<your-username>/countdown.git
cd countdown
chmod +x countdown.sh
sudo mv countdown.sh /usr/local/bin/countdown
```

Now you can run it from anywhere:

```bash
countdown 5m
```

## Screenshot

<p align="center">
 <img width="" height="" alt="image" src="https://github.com/user-attachments/assets/264b927d-1b67-4f24-beb3-53072a970184" />
</p>

---

## 🚀 Usage

```bash
countdown <time>
```

* `10s` → 10 seconds countdown
* `5m`  → 5 minutes countdown
* `2h`  → 2 hours countdown

### Examples

```bash
countdown 45s   # countdown from 45 seconds
countdown 10m   # countdown from 10 minutes
countdown 1h    # countdown from 1 hour
```

---

## 🛠 Features

* Supports `s`, `m`, and `h` inputs.
* Inline timer (no full-screen curses UI).
* Cross-platform: works on **Linux** and **macOS**.
* Lightweight: pure Bash.

---

📜 License: MIT License © 2025

