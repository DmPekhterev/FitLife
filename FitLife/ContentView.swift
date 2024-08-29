//
//  ContentView.swift
//  FitLife
//
//  Created by Дмитрий on 29.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var user = user(username: "user", email: "user@example.com")
    
    var body: some View {
        NavigationView {
            list {
                ForEach(user.workouts, id \.Date) {workout in
                    VStack(alignment: .leading) {
                        Text ("Дата: \(workout.date, formatter: dateFormater)")
                        Text ("Упражения: / (workout. exercises.joined(separator", "))")
                        
                    }
                }
            }
            .navigationTitle("Тренировки")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: addSampleWorkout) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

private func addSumpleWorkout () {
    let NewWorkout = Workout(date: Date(), exercises: )
}

func newFunction() {
    print("Это новое изменение!")
}
