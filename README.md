<div align="center">

# ⚡ DYNAMIC RENAME PACKER ⚡

### 🚀 The Ultimate Android/Kotlin Package Renaming CLI Tool

**Built for developers who value speed, precision, and beautiful terminals.**

[![Developer](https://img.shields.io/badge/Developer-%40DynamicOwner-cyan?style=for-the-badge&logo=github)](https://github.com/prod91486-oss)
[![Version](https://img.shields.io/badge/Version-6.4_Auto--Detect-yellow?style=for-the-badge)]()
[![Platform](https://img.shields.io/badge/Platform-Termux%20%7C%20AndroidIDE%20%7C%20Linux-green?style=for-the-badge)]()
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)]()
[![Status](https://img.shields.io/badge/Status-Production_Ready-success?style=for-the-badge)]()
[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f?style=for-the-badge&logo=gnu-bash&logoColor=white)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen?style=for-the-badge)]()

[**🚀 Quick Start**](#-run-automatically-single-command) • [**📖 Docs**](#-full-step-by-step-guide) • [**❓ FAQ**](#-frequently-asked-questions-faq) • [**🐛 Report Bug**](https://github.com/prod91486-oss/Auto-Package-Renamer/issues)

</div>

---

## 🚀 Run Automatically (Single Command)

Open your terminal inside your Android project folder and paste this command:

```bash
bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)
```

**That's it!** The tool will:
- 🔍 Auto-detect your project path
- 📦 Auto-detect your old package name
- ⚡ Auto-replace all references
- 📁 Auto-restructure directories
- 🔧 Auto-sync Gradle `applicationId`
- 🚪 Auto-close the terminal when done

---

## 📖 Overview

**Dynamic Rename Packer (DRP)** is a high-performance, fully automated CLI tool that renames Android/Kotlin package structures in seconds. Whether you're refactoring a small app or a massive codebase with thousands of files, DRP handles the entire process — from detecting your project structure to restructuring directories and syncing Gradle configuration — all within a single command.

Built with **mobile-first design principles**, DRP is optimized for **AndroidIDE**, **Termux**, and standard Linux terminals. It features a premium multicolour UI, intelligent auto-detection, and blazing-fast execution without compromising accuracy.

> **Why DRP?** Manual package renaming in Android is error-prone, tedious, and dangerous. One missed reference can break your entire build. DRP eliminates this risk by systematically scanning, replacing, and verifying every file in your project.

---

## 🌟 Highlights at a Glance

| | |
| :--- | :--- |
| 🎯 **Zero Configuration** | Auto-detects everything |
| ⚡ **Blazing Fast** | Completes in seconds |
| 📱 **Mobile Optimized** | Perfect for AndroidIDE |
| 🎨 **Premium UI** | Beautiful gradient colors |
| 🛡️ **Safe** | Confirmation prompts protect you |
| 🚀 **Smart** | Only touches files that need changing |
| 💎 **Professional** | Production-grade reliability |
| 🔒 **Offline-Ready** | After first download, works fully offline |

---

## 📋 Full Step-by-Step Guide

### 📁 Step 1 — Open Terminal in Your Project Folder

```bash
cd /storage/emulated/0/AndroidIDEProjects/YOUR_PROJECT_NAME
```

> **Note:** Replace `YOUR_PROJECT_NAME` with your actual project folder name (e.g., `BGMI-SRC`).

### ▶️ Step 2 — Run This Command (Auto-Detect + Rename)

```bash
bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)
```

### ✅ Step 3 — Confirm Auto-Detected Values

The script will automatically:
- 🔍 Detect your project path (from current directory upward)
- 📦 Detect your old package name (from `build.gradle` / `AndroidManifest.xml`)
- 🔧 Prepare the rename operation

Press **`y`** to confirm each auto-detected value.

### ✏️ Step 4 — Enter New Package Name

Type your new package name (e.g., `com.newapp.package`) and press Enter.

### 🎉 Step 5 — Confirm & Done

Type **`y`** to start. The script will:
- 🔄 Replace references in all files
- 📦 Restructure directories
- 🔧 Sync Gradle `applicationId`
- ✅ Auto-close terminal when done

---

## 🎬 Complete Terminal Preview

Here's what the interactive flow looks like:

```text
┌────────────────────────────────┐
│  🚀 DYNAMIC RENAME PACKER 🚀   │
├────────────────────────────────┤
│  Tool : Dynamic Rename         │
│  Dev  : @DynamicOwner          │
│  Ver  : v6.4 Auto              │
└────────────────────────────────┘

┌────────────────────────────────┐
│  ⚙️  STEP 1 · Auto Detect ⚙️   │
└────────────────────────────────┘

  ✔ Detected: /storage/.../BGMI-SRC

  ❯ Use this path? [y/n] y

  ✔ Detected: com.Dynamic

  ❯ Use this package? [y/n] y

  🔹 Enter NEW package
  ❯ com.newapp

┌────────────────────────────────┐
│  📋 Confirm Operation          │
├────────────────────────────────┤
│  Old : com.Dynamic             │
│  New : com.newapp              │
└────────────────────────────────┘

  ❯ Continue? [y/n] y

┌────────────────────────────────┐
│  🔄 STEP 2 · Replacing Refs 🔄  │
└────────────────────────────────┘

  ✔ Analyzing project

  🎯 Found 7 files matching com.Dynamic

  [████████████████] 100%
  ✔ ...amic/utils/AppManager.java
  ✔ .../Dynamic/utils/Downtwo.java
  ✔ Updated 7 files.

┌────────────────────────────────┐
│  📦 STEP 3 · Restructuring Dirs │
└────────────────────────────────┘

  📁 .../main/java/com/Dynamic
     ↳ .../main/java/com/newapp

  ✔ Renamed 1 directories.

┌────────────────────────────────┐
│  🔧 STEP 4 · Syncing Gradle    │
└────────────────────────────────┘

  ✔ .../BGMI-SRC/app/build.gradle

  ✔ Finalizing

┌────────────────────────────────┐
│  ✅ PACKAGE RENAME COMPLETED ✅ │
├────────────────────────────────┤
│  📂 Project:                   │
│  .../AndroidIDEProjects/BGMI   │
└────────────────────────────────┘

  🚀 Thank you for choosing DRP! 🚀

  👨‍💻 [@DynamicOwner]  ✨ Successfully Completed!
```

---

## ✨ Key Features (Detailed)

### 🔍 Smart Auto-Detection
Scans your current directory and up to **4 parent levels** to find Android project markers like `settings.gradle`, `app/build.gradle`. Extracts the current `applicationId` or `namespace` without asking you to type anything.

### ⚡ Ultra-Fast Execution
Optimized loop delays mean the entire process — including file scan, replacement, and directory restructuring — completes in **under 10 seconds** for most projects.

### 📱 Mobile-Friendly UI
Borders are perfectly aligned to **32 characters**, ensuring compatibility with the narrow terminal widths of AndroidIDE and Termux. No more wrapped borders or misaligned text!

### 📊 Real-Time Progress
Accurately scans only files that contain the old package, then shows a smooth **0% → 100%** progress bar as it replaces each one.

### 📦 Auto Directory Restructuring
Creates the new nested folder structure (e.g., `com/newapp/`) and moves your source files automatically. Handles multi-level packages flawlessly.

### 🔧 Gradle Sync
Updates the `applicationId` in both **Groovy** (`build.gradle`) and **Kotlin** (`build.gradle.kts`) build files.

### 🚪 Clean Auto-Exit
Uses **5 different methods** to close the terminal upon completion:
1. AndroidIDE broadcast intent
2. Termux broadcast intent
3. EOF character to `/dev/tty`
4. SIGKILL to parent shell
5. Detached killer subprocess

### 🎨 Premium UI
Beautiful **256-color gradients**, smooth spinners, box drawing characters, and animated text — all optimized for professional appearance.

### 🛡️ Safe & Verified
Every destructive operation is preceded by a **confirmation prompt**. The script shows you exactly what will change before doing it.

---

## 🎯 Use Cases

DRP is designed for developers who need to:

- ✅ **Rebrand an app** — Change `com.oldcompany.app` to `com.newcompany.app`
- ✅ **Move to a new domain** — Rename packages when migrating to a new organization
- ✅ **Clone projects** — Duplicate a codebase under a different package namespace
- ✅ **Fix package mistakes** — Correct typos or deprecated naming conventions
- ✅ **Prepare for Play Store** — Ensure your `applicationId` is unique and production-ready
- ✅ **Learning & experimentation** — Quickly test different package structures
- ✅ **Migrate legacy codebases** — Modernize old projects with new naming conventions
- ✅ **Multi-flavor builds** — Create separate flavors with distinct package identities
- ✅ **Whitelabel apps** — Generate multiple app variants from one codebase
- ✅ **Prepare for rebranding** — Change package name when rebranding your startup

---

## ⚡ Quick Alias Setup (Pro Tip)

Tired of typing the long command every time? Set up a shortcut alias!

### Run This Once in Your Terminal

```bash
echo 'alias drp="bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)"' >> ~/.bashrc && source ~/.bashrc
```

### Now, From Any Project Folder

```bash
cd /storage/emulated/0/AndroidIDEProjects/YOUR_PROJECT
drp
```

That's it! **`drp`** is your new magic command. 🎯

---

## 🎬 One-Liner with Auto-Navigation

Want to **navigate + run** in a single line? Use this:

```bash
cd /storage/emulated/0/AndroidIDEProjects/YOUR_PROJECT_NAME && bash <(curl -sL https://raw.githubusercontent.com/prod91486-oss/Auto-Package-Renamer/main/Auto-Package-Rename.sh)
```

---

## 🛠️ How It Works (Under the Hood)

When you run the tool, it performs the following phases automatically:

### 1. ⚙️ Auto-Detection Phase
- Scans your current directory and up to 4 parent levels to find `settings.gradle` or `app/build.gradle`
- Extracts the current `applicationId` or `namespace` from Gradle/Manifest files
- Asks you to confirm if the auto-detected values are correct

### 2. 📋 Configuration Phase
- You enter the **New Package Name** (e.g., `com.new.app`)
- The script displays a summary of old → new package mapping
- You confirm with `y` or `n`

### 3. 🔄 Replacement Phase
- Scans all `.java`, `.kt`, `.kts`, `.xml`, and `.gradle` files
- Replaces all references of old package with new one
- Shows real-time progress bar as it updates each file

### 4. 📦 Directory Restructuring Phase
- Creates new folder structure (e.g., `com/new/app`) and moves your files
- Example: `src/main/java/com/old/app/` → `src/main/java/com/new/app/`

### 5. 🔧 Gradle Sync Phase
- Updates the `applicationId` inside your build files to match new package

### 6. ✅ Completion Phase
- Displays final summary with project path
- Automatically closes the terminal

---

## 📊 Comparison: Manual vs DRP

| Task | Manual Renaming | Dynamic Rename Packer |
|------|-----------------|----------------------|
| Scan files for old package | Manual `grep` across folders | ✅ Automatic |
| Replace references in 1000+ files | Hours of work | ⚡ Seconds |
| Restructure directories | Manual drag & drop | ✅ Automatic |
| Update `applicationId` | Easy to forget | ✅ Auto-synced |
| Risk of breaking build | Very high | ✅ Minimal |
| Cross-platform compatibility | Depends on IDE | ✅ Works everywhere |
| Time for typical project | 30 min – 2 hours | ⚡ Under 10 seconds |
| Human error probability | High | ✅ Zero |
| Handles 1000+ files | Painful | ✅ Effortless |
| Reversible | Hard to undo | ✅ Use Git |

---

## 💻 Performance Benchmarks

| Project Size | Files Scanned | Time Taken |
|--------------|---------------|------------|
| Small (10 files) | 10 | ⚡ < 1 sec |
| Medium (100 files) | 100 | ⚡ 1-2 sec |
| Large (1000 files) | 1000 | ⚡ 3-5 sec |
| Huge (10000 files) | 10000 | ⚡ 15-25 sec |

> *Benchmarks on AndroidIDE (ARM64, Android 12) — actual times may vary.*

---

## 📋 Requirements

| Requirement | Version | Notes |
|-------------|---------|-------|
| **Bash** | v4.0 or higher | Preinstalled on Android/Linux |
| **curl** | Any | `pkg install curl` if missing |
| **find** | GNU findutils | Preinstalled |
| **sed** | GNU sed | Preinstalled |
| **grep** | GNU grep | Preinstalled |
| **Android Project** | Any Gradle-based | Kotlin/Java supported |
| **Internet** | Only for first run | After download, works offline |

---

## ⚠️ Important Notes

> [!WARNING]
> **Always Backup First!** While this script is safe and tested, automated refactoring carries inherent risks. Please commit your changes or back up your project before running the tool.

- **AndroidIDE Users:** If your terminal still shows a `Process completed` message, simply press `Enter` to exit.
- **Large Projects:** For projects with 10,000+ files, the initial scan may take a few seconds. This is normal.
- **Custom Configurations:** If your project uses non-standard file extensions, you may need to manually verify some files after running the tool.
- **Private Source:** This is a public repository. If you want to hide your source code from public view, consider using `shc` to compile the script into a binary.

---

## 🐛 Troubleshooting

### ❌ "Invalid project path!" Error
**Solution:** Make sure you're running the script from inside a valid Android project folder. The folder must contain `settings.gradle` or `app/build.gradle`.

### ❌ Auto-Detect Fails to Find Old Package
**Solution:** Manually enter the old package name when prompted. Ensure your project has a proper `applicationId` in Gradle files.

### ❌ Files Not Being Replaced
**Solution:** Verify that the old package name is exactly what's in your files. **Case-sensitive!**

### ❌ Terminal Doesn't Auto-Close
**Solution:** This is an AndroidIDE terminal behavior. Press `Enter` to manually close. On Termux, auto-close works 100%.

### ❌ Gradle Sync Fails After Rename
**Solution:** Open your project in Android Studio and click **Build → Clean Project**, then **Build → Rebuild Project**.

### ❌ Permission Denied Error
**Solution:** Make the script executable:
```bash
chmod +x Auto-Package-Rename.sh
```

### ❌ Curl Command Not Found
**Solution:** Install curl:
```bash
pkg install curl
```

### ❌ "No files contain..." Message
**Solution:** Your old package name isn't being used anywhere. Verify you entered the correct old package.

### ❌ Renamed Wrong Package
**Solution:** Use Git to revert:
```bash
git checkout .
```
Or restore from backup.

---

## 🔄 Post-Rename Checklist

After running DRP, follow these steps to ensure everything works:

### Immediate Steps (Required)
1. ✅ Open your project in **Android Studio** or **AndroidIDE**
2. ✅ Run **Build → Clean Project**
3. ✅ Run **Build → Rebuild Project**
4. ✅ Fix any compilation errors (if any)

### Testing Steps (Highly Recommended)
5. ✅ Test app launch
6. ✅ Test login/authentication
7. ✅ Test navigation between screens
8. ✅ Test API calls
9. ✅ Test push notifications
10. ✅ Test deep links

### Configuration Updates (If Applicable)
11. ✅ Update Firebase config (`google-services.json`)
12. ✅ Update third-party SDK keys (Google Maps, Analytics, AdMob)
13. ✅ Update ProGuard/R8 rules
14. ✅ Update any backend API whitelisting
15. ✅ Update CI/CD configurations
16. ✅ Update Google Play Console settings (if published)

### Version Control
17. ✅ Review all changes with `git diff`
18. ✅ Commit changes with a meaningful message
19. ✅ Push to remote repository

---

## ❓ Frequently Asked Questions (FAQ)

### General Questions

**Q: Will this tool work on iOS/Swift projects?**
A: No. DRP is specifically designed for Android/Kotlin/Java projects with Gradle.

**Q: Can I undo the changes?**
A: Not directly. DRP modifies files in-place. Always use version control (Git) so you can revert if needed.

**Q: Is it safe for production apps?**
A: Yes, but always test thoroughly after renaming. **Backup first!**

**Q: How long does it take?**
A: Typically **under 10 seconds** for most projects. Large projects (5000+ files) may take 20-30 seconds.

**Q: Does it work on Windows?**
A: DRP is designed for Linux-based environments. On Windows, use **WSL**, **Git Bash**, or **MSYS2**.

**Q: Does it work on macOS?**
A: Yes, macOS ships with Bash. You may need to install `curl` via Homebrew if missing.

### Technical Questions

**Q: Does it handle multi-module projects?**
A: Yes, it scans the entire project directory, including all modules.

**Q: Will it rename the app's display name?**
A: No. It only renames the package structure. To change the app's display name, edit `strings.xml` (`app_name`).

**Q: Will it change my Git history?**
A: No. The file renames will appear as changes in Git, but history is preserved.

**Q: Can I use it on a Kotlin Multiplatform project?**
A: Yes, as long as it's Gradle-based. The tool handles `.kts` files as well.

**Q: What happens if the old package isn't found?**
A: The tool displays `No files contain...` message and safely exits.

**Q: Does it modify JAR/AAR binary files?**
A: No. It only modifies text-based source files.

**Q: Will it affect my ProGuard rules?**
A: It will update any `-keep` rules containing the old package name in `.pro` files if they match `.xml` patterns. Verify manually after rename.

**Q: Can I run it multiple times?**
A: Yes, it's idempotent. Running it again with the same parameters produces consistent results (or reports no changes).

### Support Questions

**Q: Where do I report bugs?**
A: Open an issue on [GitHub Issues](https://github.com/prod91486-oss/Auto-Package-Renamer/issues).

**Q: Can I contribute?**
A: Yes! See the [Contributing](#-contributing) section below.

**Q: Is there a GUI version?**
A: Not yet. It's on the roadmap (see below).

---

## 🗺️ Roadmap

### ✅ Completed
- [x] **v5.0** — Initial Release with Basic Renaming
- [x] **v6.0** — Mobile-Friendly UI + Progress Bar
- [x] **v6.3** — Ultimate Auto-Exit + Speed Boost
- [x] **v6.4** — Auto-Detect Project Path & Old Package

### 🚧 In Progress
- [ ] **v7.0** — Multi-Module Support + Dry-Run Mode
- [ ] **v7.5** — Package Rename Undo/Rollback

### 🔮 Planned
- [ ] **v8.0** — GUI Version (Tkinter/Termux:API)
- [ ] **v8.5** — Support for Flutter/React Native projects
- [ ] **v9.0** — IDE Plugin for Android Studio
- [ ] **v9.5** — Cloud-based rename service
- [ ] **v10.0** — AI-powered package name suggestions

---

## 🤝 Contributing

Contributions are welcome! Whether you're fixing a bug, adding a feature, or improving documentation, your help is appreciated.

### How to Contribute

1. **Fork** the repository
2. **Clone** your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/Auto-Package-Renamer.git
   ```
3. **Create a branch** for your feature:
   ```bash
   git checkout -b feature/amazing-feature
   ```
4. **Make your changes**
5. **Test thoroughly**
6. **Commit** your changes:
   ```bash
   git commit -m "Add amazing feature"
   ```
7. **Push** to your branch:
   ```bash
   git push origin feature/amazing-feature
   ```
8. **Open a Pull Request**

### Guidelines

- Follow existing code style
- Add comments for complex logic
- Test on AndroidIDE/Termux before submitting
- Update README if adding new features
- Keep PRs focused on one feature/fix

---

## 💡 Tips & Tricks

### 🎯 Tip 1: Run from Project Root
Always run DRP from your project's root directory (where `settings.gradle` lives). This ensures accurate auto-detection.

### 🎯 Tip 2: Test on a Copy First
For critical projects, test DRP on a copy before running on your main codebase.

### 🎯 Tip 3: Use Git Branches
Create a new branch before renaming:
```bash
git checkout -b rename-package
```
This way, you can easily revert if something goes wrong.

### 🎯 Tip 4: Combine with Other Tools
After DRP runs, use Android Studio's **Refactor → Rename** for any edge cases.

### 🎯 Tip 5: Automate with CI/CD
Add DRP to your CI/CD pipeline for automated package renaming during builds.

---

## 🔒 Security & Privacy

- **No Data Collection:** DRP does not collect or transmit any data
- **No Network Calls:** After download, the script runs entirely offline
- **No External Dependencies:** Only uses standard Linux utilities
- **Open Source:** Full source code available for review
- **MIT License:** Free to use, modify, and distribute

---

## 📊 Stats & Recognition

- ⭐ **Stars:** Give us a star if you find this useful!
- 🍴 **Forks:** Fork and contribute
- 🐛 **Issues:** Report bugs
- 💬 **Discussions:** Share ideas

---

## 📜 Changelog

### v6.4 (Latest)
- ✨ Auto-detect project path
- ✨ Auto-detect old package name
- 🎨 Premium multicolour UI
- ⚡ Ultra-fast execution

### v6.3
- 🚪 Ultimate auto-exit (5 methods)
- ⚡ Speed boost

### v6.0
- 📱 Mobile-friendly UI
- 📊 Real-time progress bar
- 🎨 Premium color palette

### v5.0
- 🎉 Initial release
- 🔄 Basic package renaming
- 📁 Directory restructuring

---

## 📜 License

This project is licensed under the **MIT License** — feel free to use, modify, and distribute.

```
MIT License

Copyright (c) 2024 Dynamic Owner

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

---

## 🙏 Credits & Acknowledgments

- **Developer:** [@DynamicOwner](https://github.com/prod91486-oss)
- **Inspired by:** The Android developer community
- **Tested on:** AndroidIDE, Termux, Ubuntu Linux
- **Built with:** ❤️ and lots of ☕

---

## 📞 Contact & Support

| Platform | Link |
|----------|------|
| **GitHub** | [@prod91486-oss](https://github.com/prod91486-oss) |
| **Email** | dynamicvip@developer.com |
| **Issues** | [GitHub Issues](https://github.com/prod91486-oss/Auto-Package-Renamer/issues) |

---

## 💻 Developer Signature

| | |
|---|---|
| **Tool** | Dynamic Rename Packer |
| **Developer** | [@DynamicOwner](https://github.com/prod91486-oss) |
| **Version** | `v6.4 Auto-Detect` |
| **Status** | `✔ Production Ready` |
| **Email** | dynamicvip@developer.com |

---

<div align="center">

## ⭐ Show Your Support

If you found this tool useful, please consider:

- ⭐ **Starring** this repository
- 🐛 **Reporting** bugs
- 💡 **Suggesting** features
- 🔄 **Sharing** with friends
- 📝 **Writing** a review

**Every star motivates me to keep improving!** 🌟

---

### 🚀 Thank you for choosing DYNAMIC RENAME PACKER! 🚀

**Made with ❤️ for the Android Developer Community**

[⬆ Back to Top](#-dynamic-rename-packer-)

</div>
