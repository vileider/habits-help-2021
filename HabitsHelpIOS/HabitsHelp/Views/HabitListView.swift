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

struct HabitListView: View {
//	@Published var habitRepository = HabitRepository()
	
	@ObservedObject var habitListVM = HabitListViewModel()
	
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

			List(habitListVM.habitCellViewModels) { habitCellVM in
				HabitCellView(habitCellVM: habitCellVM)
			}
			
//			ForEach(testHabits, id: \.id) { habit in
//				HabitCellView(habit: habit)
//				Divider()
//			}
			
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
