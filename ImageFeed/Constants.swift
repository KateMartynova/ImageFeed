//
//  Constants.swift
//  ImageFeed
//
//  Created by Ekaterina Martynova on 09.02.2024.
//

import Foundation

let AccessKey = "3AozZf3C-QVQCN4hDYU-SSf3_2CCa0QUu0zEMhNHZK4"
let SecretKey = "XeiNUE1HTIBBLybalFL511jXuFk38wBU4GnTNtKq19w"
let RedirectURI = "urn:ietf:wg:oauth:2.0:oob"
let AccessScope = "public+read_user+write_likes"
let UnsplashAuthorizeURLString = "https://unsplash.com/oauth/authorize"

var DefaultBaseURL: URL {
    guard let url = URL(string: "https://api.unsplash.com") else { preconditionFailure("wrong URL") }
    return url
}

