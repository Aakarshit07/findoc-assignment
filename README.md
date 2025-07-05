# 🚀 Flutter BLoC Login & Home App

This Flutter mobile application is built as a technical assignment to demonstrate:

- ✔️ **BLoC state management**
- ✔️ **Form validation with specific rules**
- ✔️ **API integration**
- ✔️ **Navigation between multiple screens**
- ✔️ **Dynamic UI with Light & Dark themes**
- ✔️ **User profile icon logic with logout**

---

## 📄 **Assignment Requirements**

### ✅ 1️⃣ Login Screen

**UI Components:**

- Email text field
- Password text field
- Submit button

**Functional Requirements:**

- The **email field** validates that input matches a standard valid email format.
  - If the format is invalid, a clear error message is displayed (e.g., _"Please enter a valid email address."_).
- The **password field** enforces the following rules:
  - Minimum **8 characters**
  - Must contain at least **one uppercase letter**
  - Must contain at least **one lowercase letter**
  - Must contain at least **one numeric digit**
  - Must contain at least **one special symbol**
  - If any rule is violated, a specific error message is shown below the input.
- A **show/hide password** toggle icon is provided so users can reveal or hide their password while typing.
- The **Submit button** triggers validation — only if all rules pass does it navigate to the **Home Screen**.

---

### ✅ 2️⃣ Navigation

- On successful validation and submission of the login form, the user is **navigated to the Home Screen**.
- When logged in, the **top AppBar** displays a **profile icon** that shows the **first letter of the user’s email**.
- Tapping the **profile icon** logs out the user by navigating them **back to the Login Screen**.

---

### ✅ 3️⃣ Home Screen

**Data Display:**

- The app makes an **HTTP GET request** to the [Picsum Photos API](https://picsum.photos/v2/list).
- It fetches **10 random images** from the API.
- The images are displayed in a **vertical ListView** with proportional spacing and padding for clean layout.

**Cell Layout for Each Image:**

- 📷 The image’s **width matches the device screen width**.
- 📐 The image’s **height adjusts dynamically** based on the image’s original aspect ratio.
- ✍️ The **author name** is displayed below the image:
  - Styled with **Montserrat Semi-Bold**
  - Text color is dark in Light Mode and white in Dark Mode
- 📝 A **short description** for each image is displayed:
  - Styled with **Montserrat Regular**
  - Text color is dark grey in Light Mode, white/grey in Dark Mode
  - Description is limited to **maximum 2 lines** with ellipsis if overflow.

---

### ✅ 4️⃣ Theming

- The app uses a custom **primary color**: `#C04000` (burnt orange).
- Both **Light and Dark Mode** are supported.
- All text colors automatically adapt to the theme’s brightness for readability.
- Fonts use **Montserrat**, with weights adjusted for titles and descriptions.

---

### ✅ 5️⃣ Code Architecture

- Built with the **BLoC pattern**:
  - `LoginBloc` handles form validation logic and UI state for the Login Screen.
  - `HomeBloc` handles the API request state and UI state for the Home Screen.
- API logic is abstracted in `repositories/ImageRepository`.
- Data models (like the `ImageModel`) handle JSON mapping for the API.
- Clear folder structure:
  ```
  lib/
   ├── blocs/            # LoginBloc & HomeBloc
   ├── models/           # ImageModel
   ├── repositories/     # ImageRepository for API calls
   ├── screens/          # LoginScreen & HomeScreen
   ├── main.dart         # App entry point, theme, and routing
  ```

---

### ✅ 6️⃣ Final Deliverables

- 📱 **APK:** Production APK built in release mode.
- 🌐 **Public GitHub repository:** Includes complete source code with proper `.gitignore`.
- ✅ **Internet permission** declared in `AndroidManifest.xml`:
  ```xml
  <uses-permission android:name="android.permission.INTERNET"/>
  ```

---

## 📦 **How to Build & Run**

1️⃣ Install Flutter SDK: [Flutter Install Guide](https://docs.flutter.dev/get-started/install)

2️⃣ Clone the repository:

```bash
git clone https://github.com/Aakarshit07/findoc-assignment

```

3️⃣ Install dependencies:

```bash
flutter pub get
```

4️⃣ Run in debug:

```bash
flutter run
```

5️⃣ Build production APK:

```bash
flutter build apk --release
```

---

---

## 🧩 **Tech Stack**

- Flutter (Stable)
- Dart
- `flutter_bloc`
- `http`
- `google_fonts`

---

## ✅ **Requirements Covered**

✔️ Login screen with correct UI components  
✔️ Valid email format validation  
✔️ Strong password rules enforced with clear error messages  
✔️ Show/hide password feature  
✔️ Navigation to Home on successful login  
✔️ Home screen fetches 10 images from live API  
✔️ Vertical list with dynamic cell layout  
✔️ Author & description styled as required  
✔️ Profile icon with first letter of email, tap to logout  
✔️ Theming with primary color, Light/Dark modes  
✔️ BLoC state management for all screens  
✔️ Internet permission for production  
✔️ Code publicly shared on GitHub  
✔️ APK publicly shared via Google Drive

---

---

## 👤 **Author**

**Developer:** Aakarshit Choudhary
**LinkedIn:** [in/aakarshit-choudhary](https://www.linkedin.com/in/aakarshit-choudhary/)  
**GitHub:** [Aakarshit07](https://github.com/Aakarshit07)

---
