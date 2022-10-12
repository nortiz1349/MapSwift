//
//  LocationsViewModel.swift
//  MapSwift
//
//  Created by Nortiz M1 on 2022/10/12.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
	
	// All loaded locations
	@Published var locations: [Location]
	
	// Current location on map
	@Published var mapLocation: Location {
		didSet {
			updateMapRegion(location: mapLocation)
		}
	}
	
	// Current region on Map
	@Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
	let mapSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
	
	// Show list of locations
	@Published var showLocationsList: Bool = false
	
	init() {
		let locations = LocationsDataService.locations
		self.locations = locations
		self.mapLocation = locations.first! // 데이터가 static 파일로 항상 존재하므로 강제 언래핑
		
		self.updateMapRegion(location: locations.first!)
	}
	
	private func updateMapRegion(location: Location) {
		withAnimation(.easeInOut) {
			mapRegion = MKCoordinateRegion(
				center: location.coordinates,
				span: mapSpan)
		}
	}
	
	func toggleLocationsList() {
		withAnimation(.easeInOut) {
			showLocationsList.toggle()
		}
	}
	
	func showNextLocation(location: Location) {
		withAnimation(.easeInOut) {
			mapLocation = location
			showLocationsList = false
		}
	}
}
