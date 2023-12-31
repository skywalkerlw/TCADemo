//
//  ContentView.swift
//  MyTCADemo
//
//  Created by liang wang on 29/10/2023.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<CounterFeature>
    var body: some View {
        WithViewStore(self.store, observe: { $0
        }){ viewStore in
            VStack {
                Text("\(viewStore.count)")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                  HStack {
                    Button("-") {
                        viewStore.send(.decrementButtonTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)

                    Button("+") {
                        viewStore.send(.incrementButtonTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                  }
                }
        }

    }
}

#Preview {
    ContentView(store: Store(initialState: CounterFeature.State(), reducer: {
        CounterFeature()
    }))
}
