//
//  Location.swift
//  MapSwift
//
//  Created by Nortiz M1 on 2022/10/12.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
	
	
	let name: String
	let cityName: String
	let coordinates: CLLocationCoordinate2D
	let description: String
	let imageNames: [String]
	let link: String
	
	// Identifiable
	var id: String {
		// name = "Colosseum"
		// cityName = "Rome"
		// id = "ColosseumRome
		name + cityName
	}
	
	// Equatable
	static func == (lhs: Location, rhs: Location) -> Bool {
		lhs.id == rhs.id
	}
}
