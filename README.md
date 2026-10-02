# ⚡ DYNAMIC RENAME PACKER ⚡

### 🚀 The Ultimate Android/Kotlin Package Renaming CLI Tool

[![Developer](https://img.shields.io/badge/Developer-%40DynamicOwner-cyan?style=for-the-badge&logo=github)](https://github.com/prod91486-oss)
[![Version](https://img.shields.io/badge/Version-6.4_Auto--Detect-yellow?style=for-the-badge)]()
[![Platform](https://img.shields.io/badge/Platform-Termux%20%7C%20AndroidIDE%20%7C%20Linux-green?style=for-the-badge)]()
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)]()
[![Status](https://img.shields.io/badge/Status-Production_Ready-success?style=for-the-badge)]()

---

## 📖 Overview

**Dynamic Rename Packer (DRP)** is a high-performance, fully automated CLI tool that renames Android/Kotlin package structures in seconds. Whether you're refactoring a small app or a massive codebase with thousands of files, DRP handles the entire process — from detecting your project structure to restructuring directories and syncing Gradle configuration — all within a single command.

Built with mobile-first design principles, DRP is optimized for **AndroidIDE**, **Termux**, and standard Linux terminals. It features a premium multicolour UI, intelligent auto-detection, and blazing-fast execution without compromising accuracy.

> **Why DRP?** Manual package renaming in Android is error-prone, tedious, and dangerous. One missed reference can break your entire build. DRP eliminates this risk by systematically scanning, replacing, and verifying every file in your project.

---

## ✨ Key Features

| Feature | Description |
| :--- | :--- |
| 🔍 **Smart Auto-Detect** | Automatically finds your project path and extracts the old package name from `build.gradle`, `AndroidManifest.xml`, or source files. |
| ⚡ **Ultra-Fast Execution** | Optimized loop delays ensure the entire process completes in seconds, even for large projects. |
| 📱 **Mobile-Friendly UI** | Perfectly aligned borders and centered text, optimized for small terminal screens (AndroidIDE, Termux). |
| 📊 **Real-Time Progress** | Accurately scans only relevant files and displays a smooth `0%` to `100%` progress bar. |
| 📦 **Auto Restructuring** | Automatically creates the new directory hierarchy and moves your source files. |
| 🔧 **Gradle Sync** | Instantly updates the `applicationId` in your `build.gradle` and `build.gradle.kts` files. |
| 🚪 **Clean Auto-Exit** | Automatically closes the terminal session upon completion (no more "Press Enter" prompts). |
| 🎨 **Premium UI** | Beautiful gradient colors, smooth spinners, and an elegant multicolour design. |
| 🛡️ **Safe & Verified** | Confirmation prompts before destructive operations protect you from accidental mistakes. |
| 🔁 **Idempotent** | Running the tool multiple times with the same parameters produces consistent results. |

---

## 🎯 Use Cases

DRP is designed for developers who need to:

- ✅ **Rebrand an app** — Change `com.oldcompany.app` to `com.newcompany.app`
- ✅ **Move to a new domain** — Rename packages when migrating to a new organization
- ✅ **Clone projects** — Duplicate a codebase under a different package namespace
- ✅ **Fix package mistakes** — Correct typos or deprecated naming conventions
- ✅ **Prepare for Play Store** — Ensure your `applicationId` is unique and production-ready
- ✅ **Learning & experimentation** — Quickly test different package structures

---

## 🚀 Quick Start (Single Command)

You can run this tool directly from GitHub without cloning the repository.

> [!IMPORTANT]
> **Before running:** You must navigate into your Android project directory first! The script uses auto-detection and needs to be run from inside your project folder.

### Step 1: Navigate to your project folder

```bash
cd /storage/emulated/0/AndroidIDEProjects/YOUR_PROJECT_NAME
