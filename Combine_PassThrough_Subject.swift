import Foundation
import Combine
import SwiftUI


/// Combine - Passthrough subject--> us it to pass or inject objects to the subscriber
///
var subscription = Set<AnyCancellable>
var passthrough = PassthroughSubject<Int, Never>()


passthrough
    .subscribe(on: DispatchQueue.main)
    .sink(receiveValue: { value in
        print("recieved valie \(value)")
        print(Thread.current)
    }).store(in: $subscription)

passthrough.send(1)

