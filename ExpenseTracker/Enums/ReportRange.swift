

import Foundation

enum ReportRange: String, CaseIterable {
	case daily = "Today"
	case monthly = "This Month"
	case weekly = "This Week"
	
	func timeRange() -> (Date, Date) {
		let now = Date()
		switch self {
		case .daily:
			return (now.startOfDay, now.endOfDay)
		case .monthly:
			return (now.startOfMonth, now.endOfMonth)
		case .weekly:
			return (now.startOfWeek, now.endOfWeek)
		}
	}
}
