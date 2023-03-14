import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct SwiftCodingClubPublish: Website {
    enum SectionID: String, WebsiteSectionID {
        case about
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Swift Coding Club"
    var description = "A description of Swift Coding Club"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try SwiftCodingClubPublish().publish(withTheme: .foundation)
