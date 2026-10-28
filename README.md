# Demo

Generated Spring Boot backend project.

## Selected features

- web

## Prerequisites & Required Services

Before running this project, ensure you have the following prerequisites and required services installed or running:

- **Java JDK**: Java 21 or higher
- **Build Tool**: Maven Wrapper (`./mvnw` included)

## Quick 1-Step Local Verification

Verify dependencies, wrappers, Docker Compose containers, and run tests with a single command:

```bash
# Linux / macOS:
./verify.sh

# Windows PowerShell:
.\verify.ps1
```

## How to Open in IntelliJ IDEA / Eclipse / VS Code

1. **Unzip once**: Extract the downloaded ZIP to a stable folder (avoid cloud-synced Desktop/Documents folders on macOS to prevent external-change reload loops).
2. **Open Root Folder**: Open IntelliJ IDEA or VS Code, and choose the unzipped **`demo`** root directory.
3. **Trust & Import**: Trust the project if prompted. The IDE will automatically detect `pom.xml` and import all dependencies.
4. **If Sources Root is Not Marked**: Right-click `pom.xml` -> **Maven -> Reload Project** (only once).
5. **Run in IDE**: Open `Application.java` and click the green **Run** icon in the editor gutter.

## Run

```bash
cp .env.example .env
./mvnw spring-boot:run
```

### Changing Server Port

The default port is **8081**. To use another port:

```bash
# Run on custom port 8081:
SERVER_PORT=8081 ./mvnw spring-boot:run
# or:
./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8081
```

