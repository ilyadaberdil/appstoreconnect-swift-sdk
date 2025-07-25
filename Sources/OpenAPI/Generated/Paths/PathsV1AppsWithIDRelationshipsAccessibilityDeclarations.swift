// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var accessibilityDeclarations: AccessibilityDeclarations {
		AccessibilityDeclarations(path: path + "/accessibilityDeclarations")
	}

	public struct AccessibilityDeclarations {
		/// Path: `/v1/apps/{id}/relationships/accessibilityDeclarations`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppAccessibilityDeclarationsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "apps_accessibilityDeclarations_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
