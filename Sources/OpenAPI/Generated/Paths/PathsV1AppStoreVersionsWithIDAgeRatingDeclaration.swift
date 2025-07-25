// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var ageRatingDeclaration: AgeRatingDeclaration {
		AgeRatingDeclaration(path: path + "/ageRatingDeclaration")
	}

	public struct AgeRatingDeclaration {
		/// Path: `/v1/appStoreVersions/{id}/ageRatingDeclaration`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil) -> Request<AppStoreConnect_Swift_SDK.AgeRatingDeclarationWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAgeRatingDeclarations), id: "appStoreVersions_ageRatingDeclaration_getToOneRelated")
		}

		private func makeGetQuery(_ fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]", explode: false)
			return encoder.items
		}

		public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
			case alcoholTobaccoOrDrugUseOrReferences
			case contests
			case gambling
			case gamblingSimulated
			case kidsAgeBand
			case lootBox
			case medicalOrTreatmentInformation
			case profanityOrCrudeHumor
			case sexualContentGraphicAndNudity
			case sexualContentOrNudity
			case horrorOrFearThemes
			case matureOrSuggestiveThemes
			case unrestrictedWebAccess
			case violenceCartoonOrFantasy
			case violenceRealisticProlongedGraphicOrSadistic
			case violenceRealistic
			case ageRatingOverride
			case koreaAgeRatingOverride
		}
	}
}
