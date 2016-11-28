//
//  Command.swift
//  Perfect
//
//  Created by Paul Napier on 28/11/16.
//
//

import Foundation

public protocol Command {
    var rawValue: String { get }
    var description: String { get }
}
