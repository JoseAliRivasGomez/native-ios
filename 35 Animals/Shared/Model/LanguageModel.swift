
import Foundation

struct LanguageModel: Identifiable {
    let id = UUID()
    let language: Language
    let flag: Flag?
}
