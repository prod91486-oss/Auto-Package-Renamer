# ⚡ DYNAMIC RENAME PACKER ⚡

A fast, professional, and animated CLI tool to automate package renaming in Android/Kotlin projects. Built for speed, safety, and a premium terminal experience.

**Developer:** @DynamicOwner

---

## 🚀 Features

- **Ultra-Fast Execution:** Optimized with minimal delays for instant results.
- **Mobile-Friendly UI:** Perfectly aligned box borders and centered text for small terminal screens (e.g., AndroidIDE, Termux).
- **Accurate File Scanning:** Only scans and counts files that actually contain the old package name.
- **Real-time Progress Bar:** Visual feedback showing 0% to 100% completion.
- **Auto Directory Restructuring:** Automatically moves and renames the package folder structure.
- **Gradle Sync:** Auto-updates `applicationId` in `build.gradle` and `build.gradle.kts` files.
- **Clean Auto-Exit:** Automatically closes the terminal session upon completion (bypasses "Press Enter" prompts).
- **Premium Multicolour UI:** Beautiful gradient colors and smooth spinners.

---

## 📋 Requirements

- **Bash** (v4.0 or higher)
- **Find, Sed, Grep** (Standard Linux/Android utilities)
- **Android/Kotlin Project** (for testing)
- **Internet Connection** (only if running directly from GitHub)

---

## 🚀 How to Run (Single Command)

You can run this tool directly from GitHub without cloning the repository. Open your terminal (AndroidIDE, Termux, or Linux) and paste the following command:

```bash
bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)
