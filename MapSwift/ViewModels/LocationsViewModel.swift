//
//  LocationsViewModel.swift
//  MapSwift
//
//  Created by Nortiz M1 on 2022/10/12.
//

import Foundation

class LocationsViewModel: ObservableObject {
	
	@Published var locations: [Location]
	
	init() {
		let locations = LocationsDataService.locations
		self.locations = locations
	}
}
