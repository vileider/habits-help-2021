//
//  HabitCellViewModel.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 07/11/2021.
//

import Foundation
import Combine

class HabitCellViewModel: ObservableObject, Identifiable {
	@Published var habit: Habit
	var id: String = ""
	private var cancellables = Set<AnyCancellable>()
	
	init(habit: Habit) {
		self.habit = habit
		
//		$habit
//			.map { habit in
//			}
		
		$habit
			.compactMap { habit in
				habit.id
			}
			.assign(to: \.id, on: self)
			.store(in: &cancellables)
	}
}
