import Foundation

/// MeetingMind - AI Meeting Note-Taker with Speaker Diarization
///
/// Core module providing meeting transcription, speaker identification,
/// and AI-powered note generation capabilities.

public struct MeetingMind {
      public let version = "0.1.0"

      public init() {}

      /// Returns a greeting message confirming the library is loaded
      public func greeting() -> String {
                return "MeetingMind v\(version) - AI Meeting Note-Taker"
      }
}

/// Represents a single meeting session
public struct Meeting: Identifiable, Codable {
      public let id: UUID
      public let title: String
      public let date: Date
      public var transcript: String
      public var speakers: [Speaker]
      public var actionItems: [ActionItem]

      public init(
                id: UUID = UUID(),
                title: String,
                date: Date = Date(),
                transcript: String = "",
                speakers: [Speaker] = [],
                actionItems: [ActionItem] = []
      ) {
                self.id = id
                self.title = title
                self.date = date
                self.transcript = transcript
                self.speakers = speakers
                self.actionItems = actionItems
      }
}

/// Represents an identified speaker in a meeting
public struct Speaker: Identifiable, Codable {
      public let id: UUID
      public let name: String

      public init(id: UUID = UUID(), name: String) {
                self.id = id
                self.name = name
      }
}

/// Represents an action item extracted from a meeting
public struct ActionItem: Identifiable, Codable {
      public let id: UUID
      public let description: String
      public var assignee: String?
      public var isCompleted: Bool

      public init(
                id: UUID = UUID(),
                description: String,
                assignee: String? = nil,
                isCompleted: Bool = false
      ) {
                self.id = id
                self.description = description
                self.assignee = assignee
                self.isCompleted = isCompleted
      }
}
