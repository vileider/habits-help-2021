//
//  HabitRepository.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 07/11/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class HabitRepository: ObservableObject {
	let db = Firestore.firestore()
	@Published var habits = [Habit]()
	
	init() {
		loadData()
	}
	
	func loadData() {
		db.collection("habits").addSnapshotListener { (querySnapshot, error) in
			if let querySnapshot = querySnapshot {
				self.habits = querySnapshot.documents.compactMap { document in
					try? document.data(as: Habit.self)
				}
			}
		}
	}
}
