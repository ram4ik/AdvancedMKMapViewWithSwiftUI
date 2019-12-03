//
//  MKPointAnnotation-ObservableObject.swift
//  AdvancedMKMapViewWithSwiftUI
//
//  Created by Ramill Ibragimov on 03.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        }
        
        set {
            title = newValue
        }
    }
    
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        }
        
        set {
            subtitle = newValue
        }
    }
}
