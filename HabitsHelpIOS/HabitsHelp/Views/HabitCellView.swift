//
//  HabitCellView.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 07/11/2021.
//

import SwiftUI

struct HabitCellView: View {
	@State var fact: String = "loading..."
	@State private var expanded = false
	var habitCellVM: HabitCellViewModel
	
	func toggleExpanded() {
		withAnimation {
			expanded.toggle()
		}
	}
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack() {
				Text(habitCellVM.habit.description)
					.font(.title2)
				
				Spacer()
				
				Image(systemName: expanded ? "chevron.up" : "chevron.down")
					.foregroundColor(.orange)
			}
			.contentShape(Rectangle())
			.onTapGesture {
				toggleExpanded()
			}
			
			if expanded {
				VStack(alignment: .leading) {
					Text("Target: " + habitCellVM.habit.frequency.description)
						.foregroundColor(.gray)
						.bold()
					
//					if habit.successes.count > 0 {
//						Text(habit.successes.last!, style: .date)
//					} else {
//						Text("no successes recorded")
//					}

					Text(self.fact)
						.onAppear() {
							RequestFromRestAPI().loadData { (fact) in
								withAnimation {
									self.fact = fact?.fact ?? "couldn't load"
								}
							}
						}
						.onDisappear() {
							self.fact = "loading..."
						}
				}
			}
		}
	}
}
