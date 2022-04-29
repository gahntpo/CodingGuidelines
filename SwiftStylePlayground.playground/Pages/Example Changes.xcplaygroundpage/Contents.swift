//: [Previous](@previous)

import PlaygroundSupport
import SwiftUI

struct NetflixSubscription {
    var isExpired: Bool
    
    init(isExpired: Bool = false) {
        self.isExpired = isExpired
    }
}

struct SpotifySubscription {
    var expirationDate: Date
    
    init(expirationDate: Date) {
        self.expirationDate = expirationDate
    }
}

let myNetflixSubscription = NetflixSubscription()
let mySpotifySubscription = SpotifySubscription(expirationDate: Date() + 10)

struct SubscriptionView: View {
    
    let subscription: SpotifySubscription
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("My Spotify subscription").font(.headline)
            
            if Date.now < subscription.expirationDate {
                Button("is active") {
                    
                }
            } else {
                Text("has expired")
            }
        }
        .frame(width: 400, height: 400)
    }
}

PlaygroundPage.current.setLiveView(SubscriptionView(subscription: mySpotifySubscription))

//: [Next](@next)
