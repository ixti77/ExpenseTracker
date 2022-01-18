import Combine
import Foundation

class ReportReader: ObservableObject {
	@Published var currentEntries: [ExpenseModelProtocol] = []
	
	func prepare() {
		assertionFailure("Missing override: Please override this method in the subclass")
	}
}
