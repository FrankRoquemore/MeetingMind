import XCTest
@testable import MeetingMind

final class MeetingMindTests: XCTestCase {

      func testMeetingMindVersion() {
                let app = MeetingMind()
                XCTAssertEqual(app.version, "0.1.0")
      }

      func testMeetingMindGreeting() {
                let app = MeetingMind()
                XCTAssertTrue(app.greeting().contains("MeetingMind"))
      }

      func testMeetingCreation() {
                let meeting = Meeting(title: "Sprint Planning")
                XCTAssertEqual(meeting.title, "Sprint Planning")
                XCTAssertTrue(meeting.transcript.isEmpty)
                XCTAssertTrue(meeting.speakers.isEmpty)
                XCTAssertTrue(meeting.actionItems.isEmpty)
      }

      func testSpeakerCreation() {
                let speaker = Speaker(name: "Alice")
                XCTAssertEqual(speaker.name, "Alice")
      }

      func testActionItemCreation() {
                let item = ActionItem(
                              description: "Review PR #42",
                              assignee: "Bob"
                )
                XCTAssertEqual(item.description, "Review PR #42")
                XCTAssertEqual(item.assignee, "Bob")
                XCTAssertFalse(item.isCompleted)
      }
}
