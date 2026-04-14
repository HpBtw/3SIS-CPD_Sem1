# 📱 3SIS CPD Sem 1 - Cross-Platform Development

> Repository created as a portfolio and practical study notebook for the Cross-Platform Development course. The projects and labs found here explore the **Flutter** ecosystem and the **Dart** programming language.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

## 🎯 Repository Objective
This space serves as a living record of my learning journey in creating cross-platform mobile applications. The repository consists of architecturally complex projects alongside smaller labs focused on mastering the fundamentals of UI/UX, state management, and programming logic.

---

## ⭐ Featured Projects

### 🔐 [IronKey](./ironkey)
A customizable and interactive secure password generator. This is one of the most comprehensive projects in the repository, focused on separation of concerns and business rules.
* **Architecture & OOP:** Use of abstractions and interfaces for password generators (`StandardPasswordGenerator` and `PinPasswordGenerator`).
* **State Management:** Reactive screens based on `StatefulWidget` with form control (`TextEditingController`).
* **UI/UX:** Automatic Light/Dark theme support (`AppTheme`), clipboard copy buttons (`Clipboard`), visual feedback via `ScaffoldMessenger` (SnackBars), and Material Design 3.
* **Logic:** Implementation of `Enums` for safe control of the selected password type.

---

## 📚 Labs and Practical Exercises

Beyond the highlights above, the other folders in this repository contain applications focused on solidifying essential Flutter concepts in an isolated and gamified way. Feel free to explore the directories! 

* **[Appiadas](./appiadas):** A random joke generator app. An excellent lab for practicing screen mutability with `setState`, using Dart's math library (`dart:math`) for list randomization, and advanced layout styling using `BoxDecoration` with background images (`AssetImage`).
* **[Jokenpokemon](./Jokenpokemon):** A classic rock-paper-scissors game with a Pokémon theme, focused on UI componentization (separating the Header, Logo, and Arena into generic files) and building custom data models via Object-Oriented Programming.

**General skills practiced in these modules:**
- **Componentization:** Creating reusable *Stateless* and *Stateful Widgets*.
- **Layout Structuring:** Mastery of `Row`, `Column`, `Expanded`, `Container`, and screen flexibility.
- **Interactivity:** Capturing events via custom buttons (`ElevatedButton.styleFrom`) and gestures.

---

## 🚀 How to run the projects locally

To run any of the applications on your machine, make sure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.

1. Clone the repository:
   ```bash
   git clone [https://github.com/HpBtw/3SIS-CPD_Sem1.git](https://github.com/HpBtw/3SIS-CPD_Sem1.git)
