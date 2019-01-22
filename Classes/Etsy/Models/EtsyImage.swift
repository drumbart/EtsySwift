//
//  EtsyImage.swift
//  EtsyIntegration
//
//  Created by Maciej Kołek on 1/11/19.
//  Copyright © 2019 GetResponse. All rights reserved.
//

import Foundation

open class EtsyImage: Decodable {
    public let imageId: Int
    public let red: Int
    public let green: Int
    public let blue: Int
    public let rank: Int
    
    public let url75x: String
    public let url170x: String
    public let url570x: String
    public let urlFull: String
    public let width: Int
    public let height: Int
    
    enum CodingKeys: String, CodingKey {
        case listingImageId = "listing_image_id"
        case red
        case green
        case blue
        case rank
        case url75x = "url_75x75"
        case url170x = "url_170x135"
        case url570x = "url_570xN"
        case urlFull = "url_fullxfull"
        case fullWidth = "full_width"
        case fullHeight = "full_height"
    }
    
    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        imageId = try values.decode(Int.self, forKey: .listingImageId)
        red = try values.decode(Int.self, forKey: .red)
        green = try values.decode(Int.self, forKey: .green)
        blue = try values.decode(Int.self, forKey: .blue)
        rank = try values.decode(Int.self, forKey: .rank)
        
        url75x = try values.decode(String.self, forKey: .url75x)
        url170x = try values.decode(String.self, forKey: .url170x)
        url570x = try values.decode(String.self, forKey: .url570x)
        urlFull = try values.decode(String.self, forKey: .urlFull)
        width = try values.decode(Int.self, forKey: .fullWidth)
        height = try values.decode(Int.self, forKey: .fullHeight)
    }
}