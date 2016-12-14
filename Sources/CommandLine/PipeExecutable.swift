//
//  PipeExecutable.swift
//  Perfect
//
//  Created by Paul Napier on 13/12/16.
//
//

import Foundation

public struct PipeExecutable: ChainExecutable {
    
    public let command: Command
    public let arguments: [Argument]
    
    public var argumentStrings: [String] {
        return [command.rawValue] + arguments.map{ $0.rawValue } + command.postValue
    }
    
    internal var executables: [Executable] {
        return [Executable(command: command, arguments: arguments)]
    }
    
    public var process: Process {
        return executables.first!.process
    }
    
    public init(command: Command, arguments: [Argument]) {
        self.command = command
        self.arguments = arguments
    }
    
    @discardableResult
    public func execute(asynchronously: Bool = false, debug: Bool = false, lanchPath: String = "/bin/sh", delegate: ExecutableDelegate? = nil) -> ExecutableResponse? {
        return executables.execute(asynchronously: asynchronously, debug: debug, launchPath: lanchPath, delegate: delegate)
    }
}
