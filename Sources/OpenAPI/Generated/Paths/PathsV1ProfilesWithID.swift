// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Profiles {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/profiles/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ProfileResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "profiles_getInstance")
		}

		public struct GetParameters {
			public var fieldsProfiles: [FieldsProfiles]?
			public var fieldsBundleIDs: [FieldsBundleIDs]?
			public var fieldsDevices: [FieldsDevices]?
			public var fieldsCertificates: [FieldsCertificates]?
			public var include: [Include]?
			public var limitCertificates: Int?
			public var limitDevices: Int?

			public enum FieldsProfiles: String, Codable, CaseIterable {
				case name
				case platform
				case profileType
				case profileState
				case profileContent
				case uuid
				case createdDate
				case expirationDate
				case bundleID = "bundleId"
				case devices
				case certificates
			}

			public enum FieldsBundleIDs: String, Codable, CaseIterable {
				case name
				case platform
				case identifier
				case seedID = "seedId"
				case profiles
				case bundleIDCapabilities = "bundleIdCapabilities"
				case app
			}

			public enum FieldsDevices: String, Codable, CaseIterable {
				case name
				case platform
				case udid
				case deviceClass
				case status
				case model
				case addedDate
			}

			public enum FieldsCertificates: String, Codable, CaseIterable {
				case name
				case certificateType
				case displayName
				case serialNumber
				case platform
				case expirationDate
				case certificateContent
				case activated
				case passTypeID = "passTypeId"
			}

			public enum Include: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case devices
				case certificates
			}

			public init(fieldsProfiles: [FieldsProfiles]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, fieldsDevices: [FieldsDevices]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, include: [Include]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) {
				self.fieldsProfiles = fieldsProfiles
				self.fieldsBundleIDs = fieldsBundleIDs
				self.fieldsDevices = fieldsDevices
				self.fieldsCertificates = fieldsCertificates
				self.include = include
				self.limitCertificates = limitCertificates
				self.limitDevices = limitDevices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
				encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
				encoder.encode(fieldsDevices, forKey: "fields[devices]")
				encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitCertificates, forKey: "limit[certificates]")
				encoder.encode(limitDevices, forKey: "limit[devices]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "profiles_deleteInstance")
		}
	}
}
