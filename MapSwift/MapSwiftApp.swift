//
//  MapSwiftApp.swift
//  MapSwift
//
//  Created by Nortiz M1 on 2022/10/12.
//

import SwiftUI

@main
struct MapSwiftApp: App {
	
	@StateObject private var vm = LocationsViewModel()
	
    var body: some Scene {
        WindowGroup {
            LocationsView()
				.environmentObject(vm)
        }
    }
}
