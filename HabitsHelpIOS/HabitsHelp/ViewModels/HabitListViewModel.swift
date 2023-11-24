//
//  HabitListViewModel.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 07/11/2021.
//

import Foundation
import Combine

class HabitListViewModel: ObservableObject {
	@Published var habitRepository = HabitRepository()
	
	@Published var habitCellViewModels = [HabitCellViewModel]()
	private var cancellables = Set<AnyCancellable>()
	
	init() {
		habitRepository.$habits.map { habits in
			habits.map { habit in
				HabitCellViewModel(habit: habit)
			}
		}
		.assign(to: \.habitCellViewModels, on: self)
		.store(in: &cancellables)
		
//		self.habitCellViewModels = testHabits.map { habit in
//			HabitCellViewModel(habit: habit)
//		}
	}
}
