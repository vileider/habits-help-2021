//
//  ContentView.swift
//  HabitsHelp
//
//  Created by Andrew Smith on 03/11/2021.
//

import SwiftUI

func onEdit() {
}

func onAdd() {
}

func onExpand() {
}

enum Frequency: Int, Codable {
	case daily, weekly, monthly
	
	var description: String {
		switch self {
		case .daily: return "Daily"
		case .weekly: return "Weekly"
		case .monthly: return "Monthly"
		}
	}
}

let habits: [Habit] = [
	Habit(desc: "Go to the gym", frequency: Frequency.weekly),
	Habit(desc: "Don't eat junk food", frequency: Frequency.daily),
	Habit(desc: "Get 8 hours sleep", frequency: Frequency.daily)
]

//class Fact: ObservableObject {
//	@Published var fact: String
//
//	init(fact: String) {
//		self.fact = fact
//	}
//}

struct CatFact: Codable {
	var fact: String = "loading..."
	
	private enum CodingKeys: String, CodingKey {
		case fact = "fact"
	}
}

class RequestFromRestAPI: ObservableObject {
	@Published var fact: CatFact?
	
	func loadData(completion:@escaping (CatFact?) -> () ) {
		guard let url = URL(string: "https://catfact.ninja/fact") else {
			print("Invalid url")
			return
		}
	
		URLSession.shared.dataTask(with: url) { data, response, error in
			let fact = try! JSONDecoder().decode(CatFact.self, from: data!)
			DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
				completion(fact)
			}
		}.resume()
	}
}

struct HabitListItemView: View {
	@State var fact: String = "loading..."
	@State private var expanded = false
	var habit: Habit
	
	func toggleExpanded() {
		withAnimation {
			expanded.toggle()
		}
	}
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack() {
				Text(habit.description)
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
					Text("Target: " + habit.frequency.description)
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

struct HabitListView: View {
//	@Published var habitRepository = HabitRepository()
	
    var body: some View {
		VStack(alignment: .leading) {
			
			HStack() {
				Button("Edit", action: onEdit)
					.foregroundColor(.orange)
				
				Spacer()
				
				Button(action: onAdd) {
					Image(systemName: "plus")
						.foregroundColor(.orange)
				}
			}
			
			VStack(alignment: .leading) {
				Text("Habits Help")
					.font(.title)
					.bold()
			}
			.padding(.top)
			.padding(.bottom)

			ForEach(habits, id: \.id) { habit in
				HabitListItemView(habit: habit)
				Divider()
			}
			
			Spacer()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
		.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		HabitListView()
			.preferredColorScheme(.dark)
    }
}
