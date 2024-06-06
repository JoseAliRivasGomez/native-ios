//
//  ProverbModel.swift
//  Shuzi
//
//  Created by Ron Erez on 28/11/2023.
//

import Foundation

// https://chinese-proverbs.onrender.com/api/proverbs/random

/*
 {
   "_id": "63e6ae053bd28e8c186fdf8f",
   "proverb": "不当家，不知柴米贵。",
   "pinyin": "Bù dāng jiā, bù zhī chái mǐ guì",
   "translation": "If you don't run the family, you don't know the value of fuel and rice."
 }
 */

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let proverbModel = try? JSONDecoder().decode(ProverbModel.self, from: jsonData)

// MARK: - ProverbModel
struct ProverbModel: Codable {
    let id, proverb, pinyin, translation: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case proverb, pinyin, translation
    }
    
    static func defaultQuote() -> ProverbModel {
        ProverbModel(
            id: "63e6ae053bd28e8c186fdf26",
            proverb: "事实胜于雄辩。",
            pinyin: "Shì shí shèng yú xióng biàn",
            translation: "Facts beat eloquence.")
    }
}

