//: [Previous](@previous)

import PlaygroundSupport
import SwiftUI

struct NetflixSubscription {
    var expired: Bool
    
    init(expired: Bool = false) {
        self.expired = expired
    }
}

struct SpotifySubscription {
    var expired: Date
    
    init(expired: Date) {
        self.expired = expired
    }
}

let myNetflixSubscription = NetflixSubscription()
let mySpotifySubscription = SpotifySubscription(expired: Date() + 10)

struct SubscriptionView: View {
    
    let subscription: SpotifySubscription
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("My Spotify subscription").font(.headline)
        }
        .frame(width: 400, height: 400)
    }
}

PlaygroundPage.current.setLiveView(SubscriptionView(subscription: mySpotifySubscription))

// TODO: show text with Button "is active" / Text "has expired"

//: [Next](@next)
