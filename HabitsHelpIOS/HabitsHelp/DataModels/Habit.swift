//
//  Habit.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 07/11/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class Habit: Codable {
	@DocumentID var id: String?
	var description: String
	var frequency: Frequency
	  
	init(desc: String, frequency: Frequency) {
//		self.id = UUID()
		self.description = desc;
		self.frequency = frequency;
	}
}

let testHabits: [Habit] = [
	Habit(desc: "Go to the gym", frequency: Frequency.weekly),
	Habit(desc: "Don't eat junk food", frequency: Frequency.daily),
	Habit(desc: "Get 8 hours sleep", frequency: Frequency.daily)
]
