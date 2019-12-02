//
//  ContentView.swift
//  AdvancedMKMapViewWithSwiftUI
//
//  Created by Ramill Ibragimov on 02.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D()
    @State private var location = [MKPointAnnotation]()
    
    var body: some View {
        ZStack {
            MapView(centerCoordinate: $centerCoordinate, annotations: location)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.blue)
                .opacity(0.3)
                .frame(width: 32, height: 32)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        let newLocation = MKPointAnnotation()
                        newLocation.coordinate = self.centerCoordinate
                        self.location.append(newLocation)
                    }) {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(Color.black.opacity(0.75))
                    .foregroundColor(.white)
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
