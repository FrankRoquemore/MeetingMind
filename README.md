# MeetingMind

**AI Meeting Note-Taker with Speaker Diarization**

MeetingMind is an iOS application that uses advanced AI to automatically transcribe meetings, identify individual speakers through diarization, and generate structured meeting notes with action items.

## Features

- Real-time meeting transcription using on-device speech recognition
- - Speaker diarization to identify and label individual participants
  - - AI-powered meeting summary generation
    - - Action item extraction and assignment
      - - Meeting history and search
        - - Export to multiple formats (PDF, Markdown, plain text)
         
          - ## Requirements
         
          - - iOS 17.0+
            - - Xcode 16.0+
              - - Swift 5.9+
               
                - ## Project Structure
               
                - ```
                  MeetingMind/
                  ├── Sources/
                  │   └── MeetingMind/
                  │       ├── App/
                  │       │   └── MeetingMindApp.swift
                  │       ├── Models/
                  │       ├── Views/
                  │       └── Services/
                  ├── Tests/
                  │   └── MeetingMindTests/
                  │       └── MeetingMindTests.swift
                  ├── Package.swift
                  └── .github/
                      └── workflows/
                          └── ios-build.yml
                  ```

                  ## Getting Started

                  1. Clone the repository
                  2. 2. Open `Package.swift` in Xcode
                     3. 3. Build and run on a simulator or device
                       
                        4. ## CI/CD
                       
                        5. This project uses GitHub Actions for continuous integration. The workflow automatically builds the project and runs tests on every push to `main`.
                       
                        6. ## License
                       
                        7. This project is proprietary software. All rights reserved.
