//
//  EventListingView.swift
//  USA Climbing Scoring
//
//  Created by Jon Rexeisen on 3/14/23.
//

import SwiftUI

struct EventListingView: View {
    @ObservedObject var viewModel = EventListingViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section("Current") {
                    ForEach(viewModel.currentEvents, id: \.self) { event in
                        NavigationLink(destination: EventResults(event: event)) {
                            
                            Text(event.name)
                        }
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color(uiColor: .systemBackground), for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Events")
        }
    }
}

struct EventListing_Previews: PreviewProvider {
    static var previews: some View {
        EventListingView()
    }
}

