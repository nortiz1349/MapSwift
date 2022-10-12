//
//  LocationsView.swift
//  MapSwift
//
//  Created by Nortiz M1 on 2022/10/12.
//

import SwiftUI
import MapKit

struct LocationsView: View {
	
	@EnvironmentObject private var vm: LocationsViewModel
	
    var body: some View {
		ZStack {
			Map(coordinateRegion: $vm.mapRegion)
				.ignoresSafeArea()
		}
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
			.environmentObject(LocationsViewModel())
    }
}
