# ⚡ Dynamic Rename Packer

> A high-performance, fully automated CLI tool designed to seamlessly rename Android/Kotlin package structures with a premium terminal UI. Built for speed, accuracy, and mobile compatibility.

**Developer:** @DynamicOwner

---

## 📖 Overview

Renaming packages in Android projects can be tedious and error-prone if done manually. **Dynamic Rename Packer** automates this entire process. It intelligently detects your project structure, replaces all package references across Java, Kotlin, XML, and Gradle files, restructures your directories, and syncs your Gradle `applicationId`—all within seconds.

---

## ✨ Key Features

- **🔍 Smart Auto-Detection:** Automatically detects the project path from your current directory and extracts the old package name from `build.gradle`, `AndroidManifest.xml`, or source files.
- **⚡ Ultra-Fast Execution:** Optimized loop delays for near-instantaneous results.
- **📱 Mobile-Friendly UI:** Perfectly aligned box borders and centered text, specifically optimized for small terminal screens (AndroidIDE, Termux, etc.).
- **📊 Accurate Progress Tracking:** Scans only files matching the old package and displays a real-time 0% to 100% progress bar.
- **📦 Auto Directory Restructuring:** Automatically creates the new directory structure and moves your source files.
- **🔧 Gradle Sync:** Auto-updates the `applicationId` in `build.gradle` and `build.gradle.kts` files.
- **🚪 Clean Auto-Exit:** Automatically closes the terminal session upon completion (bypasses the "Press Enter" prompt on AndroidIDE).
- **🎨 Premium Multicolour UI:** Beautiful gradient colors, smooth spinners, and a professional terminal experience.

---

## 🚀 Quick Start (Single Command)

You can run this tool directly from GitHub without cloning the repository. 

> **Note:** The script uses auto-detection. You must `cd` into your Android project directory before running the command.

Open your terminal (AndroidIDE, Termux, or Linux) and run:

```bash
cd /path/to/your/android/project && bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)
