//: [Previous](@previous)

import PlaygroundSupport
import SwiftUI

struct NetflixSubscription {
    var isActive: Bool
    
    init(isActive: Bool = true) {
        self.isActive = isActive
    }
}

struct SpotifySubscription {
    var expirationDate: Date
    
    var isActive: Bool {
         Date.now < expirationDate
    }
    
    init(expirationDate: Date) {
        self.expirationDate = expirationDate
    }
}

let myNetflixSubscription = NetflixSubscription()
let mySpotifySubscription = SpotifySubscription(expirationDate: Date() + 10)

struct SubscriptionView: View {
    
    let subscription: SpotifySubscription
//    @Environment(\.isEnabled) var isEnabled: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("My Spotify subscription").font(.headline)
            
            if subscription.isActive == true {
                Button("is active") {
                    
                }
            } else {
                Text("has expired")
            }
            
            if subscription.isActive == true {
                Button("play") {
                    
                }
//                .disabled(!subscription.isActive)
                .enabled(subscription.isActive)
            }
            
        }
        .frame(width: 400, height: 400)
    }
}

extension View {
    func enabled(_ enabled: Bool) -> some View {
        self.environment(\.isEnabled, enabled)
    }
}


PlaygroundPage.current.setLiveView(SubscriptionView(subscription: mySpotifySubscription))


//: [Next](@next)
