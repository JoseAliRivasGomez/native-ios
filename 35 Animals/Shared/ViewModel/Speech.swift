
import Foundation
import AVFoundation


func utter( text: String, language: Language) {
    let utterance = AVSpeechUtterance( string: text)
    utterance.voice = AVSpeechSynthesisVoice( language: getLangCode(language: language))
    utterance.rate = 0.3
    let synth = AVSpeechSynthesizer()
    synth.speak( utterance)
}
