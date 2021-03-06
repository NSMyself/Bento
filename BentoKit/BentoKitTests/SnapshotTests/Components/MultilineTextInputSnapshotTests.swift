import BentoKit
import StyleSheets
import UIKit

final class MultilineTextInputSnapshotTests: SnapshotTestCase {
    private let loremIpsum = String(repeating: "Lorem Ipsum ", count: 32)
    private let styleSheet = Component.MultilineTextInput.StyleSheet(
            font: UIFont.preferredFont(forTextStyle: .body),
            textColor: .black,
            placeholderTextColor: .lightGray
        )
        .compose(\.layoutMargins, UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
    override func setUp() {
        super.setUp()
        self.recordMode = false
    }

    func testShowingMultilineText() {
        let component = Component.MultilineTextInput(text: loremIpsum,
                                                     placeholder: "",
                                                     didFinishEditing: { _ in },
                                                     styleSheet: styleSheet)

        verifyComponentForAllSizes(component: component)
    }

    func testShowingPlaceholderWhenHavingNoText() {
        let component = Component.MultilineTextInput(text: "",
                                                     placeholder: "No Text",
                                                     didFinishEditing: { _ in },
                                                     styleSheet: styleSheet)

        verifyComponentForAllSizes(component: component)
    }
}
