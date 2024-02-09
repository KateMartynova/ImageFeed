//
//  Constants.swift
//  ImageFeed
//
//  Created by Ekaterina Martynova on 09.02.2024.
//

import Foundation

private let AccessKey = "3AozZf3C-QVQCN4hDYU-SSf3_2CCa0QUu0zEMhNHZK4"
private let SecretKey = "XeiNUE1HTIBBLybalFL511jXuFk38wBU4GnTNtKq19w"
private let RedirectURI = "urn:ietf:wg:oauth:2.0:oob"
private let AccessScope = "public+read_user+write_likes"

private var DefaultBaseURL: URL {
    guard let url = URL(string: "https://api.unsplash.com") else { preconditionFailure("wrong URL") }
    return url
}

