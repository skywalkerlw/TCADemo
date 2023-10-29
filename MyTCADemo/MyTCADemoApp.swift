//
//  MyTCADemoApp.swift
//  MyTCADemo
//
//  Created by liang wang on 29/10/2023.
//

import SwiftUI
import ComposableArchitecture

@main
struct MyTCADemoApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
      }
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: MyTCADemoApp.store
            )
        }
    }
}
