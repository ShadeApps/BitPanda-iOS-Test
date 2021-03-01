//
//	Attribute.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct Attribute: Codable {

	let allowedDocumented: Bool?
	let allowedUnverified: Bool?
	let allowedVerified: Bool?
	let assetGroupName: String?
	let assetTypeName: String?
	let available: Bool?
	let avgPrice: String?
	let buyActive: Bool?
	let change1m: String?
	let change1mAmount: String?
	let change1w: String?
	let change1wAmount: String?
	let change1y: String?
	let change1yAmount: String?
	let change24h: String?
	let change24hAmount: String?
	let color: String?
	let defaultSellAmount: String?
	let depositActive: Bool?
	let extraInfo: String?
	let extraInfoDeu: String?
	let extraInfoEng: String?
	let extraInfoFra: String?
	let ieoPhases: [String]?
	let info: String?
	let infoDeu: String?
	let infoEng: String?
	let infoFra: String?
	let infoIntegration: String?
	let infoIntegrationDeu: String?
	let infoIntegrationEng: String?
	let infoIntegrationFra: String?
	let investmentInfo: String?
	let investmentInfoDeu: String?
	let investmentInfoEng: String?
	let investmentInfoFra: String?
	let logo: String?
	let logoDark: String?
	let maintenanceEnabled: Bool?
	let maintenanceReason: String?
	let maintenanceReasonDeu: String?
	let maintenanceReasonEng: String?
	let maintenanceReasonFra: String?
	let measurementUnit: String?
	let minBuyEur: String?
	let minSellEur: String?
	let minWithdrawEur: String?
	let name: String?
	let precisionForCoins: Int?
	let precisionForFiatPrice: Int?
	let precisionForTx: Int?
	let sellActive: Bool?
	let sort: Int?
	let supportDestinationTag: Bool?
	let symbol: String?
	let transferActive: Bool?
	let unavailableReason: String?
	let unavailableReasonDeu: String?
	let unavailableReasonEng: String?
	let unavailableReasonFra: String?
	let urlCheckAddress: String?
	let urlCheckTransaction: String?
	let walletInfo: String?
	let walletInfoDeu: String?
	let walletInfoEng: String?
	let walletInfoFra: String?
	let walletMinDeposit: String?
	let walletSmallDeposit: String?
	let walletSmallDepositFee: String?
	let walletWithdrawFee: String?
	let withdrawActive: Bool?
	let balance: String?
	let cryptocoinId: String?
	let cryptocoinSymbol: String?
	let deleted: Bool
	let isDefault: Bool?
	let pendingTransactionsCount: Int?
	let androidSupportedVersion: String?
	let circulatingSupply: String?
	let family: String?
	let iosSupportedVersion: String?
	let hasWallets: Bool
	let logoColor: String?
	let logoWhite: String?
	let minWithdrawEuro: String?
	let nameDeu: String?
	let nameEng: String?
	let nameFra: String?
	let numericCharacterReference: String?
	let precision: Int?
	let symbolCharacter: String?
	let toEurRate: String?
	let fiatId: String?
	let fiatSymbol: String?

	enum CodingKeys: String, CodingKey {
		case allowedDocumented = "allowed_documented"
		case allowedUnverified = "allowed_unverified"
		case allowedVerified = "allowed_verified"
		case assetGroupName = "asset_group_name"
		case assetTypeName = "asset_type_name"
		case available = "available"
		case avgPrice = "avg_price"
		case buyActive = "buy_active"
		case change1m = "change_1m"
		case change1mAmount = "change_1m_amount"
		case change1w = "change_1w"
		case change1wAmount = "change_1w_amount"
		case change1y = "change_1y"
		case change1yAmount = "change_1y_amount"
		case change24h = "change_24h"
		case change24hAmount = "change_24h_amount"
		case color = "color"
		case defaultSellAmount = "default_sell_amount"
		case depositActive = "deposit_active"
		case extraInfo = "extra_info"
		case extraInfoDeu = "extra_info_deu"
		case extraInfoEng = "extra_info_eng"
		case extraInfoFra = "extra_info_fra"
		case ieoPhases = "ieo_phases"
		case info = "info"
		case infoDeu = "info_deu"
		case infoEng = "info_eng"
		case infoFra = "info_fra"
		case infoIntegration = "info_integration"
		case infoIntegrationDeu = "info_integration_deu"
		case infoIntegrationEng = "info_integration_eng"
		case infoIntegrationFra = "info_integration_fra"
		case investmentInfo = "investment_info"
		case investmentInfoDeu = "investment_info_deu"
		case investmentInfoEng = "investment_info_eng"
		case investmentInfoFra = "investment_info_fra"
		case logo = "logo"
		case logoDark = "logo_dark"
		case maintenanceEnabled = "maintenance_enabled"
		case maintenanceReason = "maintenance_reason"
		case maintenanceReasonDeu = "maintenance_reason_deu"
		case maintenanceReasonEng = "maintenance_reason_eng"
		case maintenanceReasonFra = "maintenance_reason_fra"
		case measurementUnit = "measurement_unit"
		case minBuyEur = "min_buy_eur"
		case minSellEur = "min_sell_eur"
		case minWithdrawEur = "min_withdraw_eur"
		case name = "name"
		case precisionForCoins = "precision_for_coins"
		case precisionForFiatPrice = "precision_for_fiat_price"
		case precisionForTx = "precision_for_tx"
		case sellActive = "sell_active"
		case sort = "sort"
		case supportDestinationTag = "support_destination_tag"
		case symbol = "symbol"
		case transferActive = "transfer_active"
		case unavailableReason = "unavailable_reason"
		case unavailableReasonDeu = "unavailable_reason_deu"
		case unavailableReasonEng = "unavailable_reason_eng"
		case unavailableReasonFra = "unavailable_reason_fra"
		case urlCheckAddress = "url_check_address"
		case urlCheckTransaction = "url_check_transaction"
		case walletInfo = "wallet_info"
		case walletInfoDeu = "wallet_info_deu"
		case walletInfoEng = "wallet_info_eng"
		case walletInfoFra = "wallet_info_fra"
		case walletMinDeposit = "wallet_min_deposit"
		case walletSmallDeposit = "wallet_small_deposit"
		case walletSmallDepositFee = "wallet_small_deposit_fee"
		case walletWithdrawFee = "wallet_withdraw_fee"
		case withdrawActive = "withdraw_active"
		case balance = "balance"
		case cryptocoinId = "cryptocoin_id"
		case cryptocoinSymbol = "cryptocoin_symbol"
		case deleted = "deleted"
		case isDefault = "is_default"
		case pendingTransactionsCount = "pending_transactions_count"
		case androidSupportedVersion = "android_supported_version"
		case circulatingSupply = "circulating_supply"
		case family = "family"
		case iosSupportedVersion = "ios_supported_version"
		case hasWallets = "has_wallets"
		case logoColor = "logo_color"
		case logoWhite = "logo_white"
		case minWithdrawEuro = "min_withdraw_euro"
		case nameDeu = "name_deu"
		case nameEng = "name_eng"
		case nameFra = "name_fra"
		case numericCharacterReference = "numeric_character_reference"
		case precision = "precision"
		case symbolCharacter = "symbol_character"
		case toEurRate = "to_eur_rate"
		case fiatId = "fiat_id"
		case fiatSymbol = "fiat_symbol"
	}

    // swiftlint:disable function_body_length
	init(from decoder: Decoder) throws {
		let values = try? decoder.container(keyedBy: CodingKeys.self)
		allowedDocumented = try? values?.decodeIfPresent(Bool.self, forKey: .allowedDocumented)
		allowedUnverified = try? values?.decodeIfPresent(Bool.self, forKey: .allowedUnverified)
		allowedVerified = try? values?.decodeIfPresent(Bool.self, forKey: .allowedVerified)
		assetGroupName = try? values?.decodeIfPresent(String.self, forKey: .assetGroupName)
		assetTypeName = try? values?.decodeIfPresent(String.self, forKey: .assetTypeName)
		available = try? values?.decodeIfPresent(Bool.self, forKey: .available)
		avgPrice = try? values?.decodeIfPresent(String.self, forKey: .avgPrice)
		buyActive = try? values?.decodeIfPresent(Bool.self, forKey: .buyActive)
		change1m = try? values?.decodeIfPresent(String.self, forKey: .change1m)
		change1mAmount = try? values?.decodeIfPresent(String.self, forKey: .change1mAmount)
		change1w = try? values?.decodeIfPresent(String.self, forKey: .change1w)
		change1wAmount = try? values?.decodeIfPresent(String.self, forKey: .change1wAmount)
		change1y = try? values?.decodeIfPresent(String.self, forKey: .change1y)
		change1yAmount = try? values?.decodeIfPresent(String.self, forKey: .change1yAmount)
		change24h = try? values?.decodeIfPresent(String.self, forKey: .change24h)
		change24hAmount = try? values?.decodeIfPresent(String.self, forKey: .change24hAmount)
		color = try? values?.decodeIfPresent(String.self, forKey: .color)
		defaultSellAmount = try? values?.decodeIfPresent(String.self, forKey: .defaultSellAmount)
		depositActive = try? values?.decodeIfPresent(Bool.self, forKey: .depositActive)
		extraInfo = try? values?.decodeIfPresent(String.self, forKey: .extraInfo)
		extraInfoDeu = try? values?.decodeIfPresent(String.self, forKey: .extraInfoDeu)
		extraInfoEng = try? values?.decodeIfPresent(String.self, forKey: .extraInfoEng)
		extraInfoFra = try? values?.decodeIfPresent(String.self, forKey: .extraInfoFra)
		ieoPhases = try? values?.decodeIfPresent([String].self, forKey: .ieoPhases)
		info = try? values?.decodeIfPresent(String.self, forKey: .info)
		infoDeu = try? values?.decodeIfPresent(String.self, forKey: .infoDeu)
		infoEng = try? values?.decodeIfPresent(String.self, forKey: .infoEng)
		infoFra = try? values?.decodeIfPresent(String.self, forKey: .infoFra)
		infoIntegration = try? values?.decodeIfPresent(String.self, forKey: .infoIntegration)
		infoIntegrationDeu = try? values?.decodeIfPresent(String.self, forKey: .infoIntegrationDeu)
		infoIntegrationEng = try? values?.decodeIfPresent(String.self, forKey: .infoIntegrationEng)
		infoIntegrationFra = try? values?.decodeIfPresent(String.self, forKey: .infoIntegrationFra)
		investmentInfo = try? values?.decodeIfPresent(String.self, forKey: .investmentInfo)
		investmentInfoDeu = try? values?.decodeIfPresent(String.self, forKey: .investmentInfoDeu)
		investmentInfoEng = try? values?.decodeIfPresent(String.self, forKey: .investmentInfoEng)
		investmentInfoFra = try? values?.decodeIfPresent(String.self, forKey: .investmentInfoFra)
		logo = try? values?.decodeIfPresent(String.self, forKey: .logo)
		logoDark = try? values?.decodeIfPresent(String.self, forKey: .logoDark)
		maintenanceEnabled = try? values?.decodeIfPresent(Bool.self, forKey: .maintenanceEnabled)
		maintenanceReason = try? values?.decodeIfPresent(String.self, forKey: .maintenanceReason)
		maintenanceReasonDeu = try? values?.decodeIfPresent(String.self, forKey: .maintenanceReasonDeu)
		maintenanceReasonEng = try? values?.decodeIfPresent(String.self, forKey: .maintenanceReasonEng)
		maintenanceReasonFra = try? values?.decodeIfPresent(String.self, forKey: .maintenanceReasonFra)
		measurementUnit = try? values?.decodeIfPresent(String.self, forKey: .measurementUnit)
		minBuyEur = try? values?.decodeIfPresent(String.self, forKey: .minBuyEur)
		minSellEur = try? values?.decodeIfPresent(String.self, forKey: .minSellEur)
		minWithdrawEur = try? values?.decodeIfPresent(String.self, forKey: .minWithdrawEur)
		name = try? values?.decodeIfPresent(String.self, forKey: .name)
		precisionForCoins = try? values?.decodeIfPresent(Int.self, forKey: .precisionForCoins)
		precisionForFiatPrice = try? values?.decodeIfPresent(Int.self, forKey: .precisionForFiatPrice)
		precisionForTx = try? values?.decodeIfPresent(Int.self, forKey: .precisionForTx)
		sellActive = try? values?.decodeIfPresent(Bool.self, forKey: .sellActive)
		sort = try? values?.decodeIfPresent(Int.self, forKey: .sort)
		supportDestinationTag = try? values?.decodeIfPresent(Bool.self, forKey: .supportDestinationTag)
		symbol = try? values?.decodeIfPresent(String.self, forKey: .symbol)
		transferActive = try? values?.decodeIfPresent(Bool.self, forKey: .transferActive)
		unavailableReason = try? values?.decodeIfPresent(String.self, forKey: .unavailableReason)
		unavailableReasonDeu = try? values?.decodeIfPresent(String.self, forKey: .unavailableReasonDeu)
		unavailableReasonEng = try? values?.decodeIfPresent(String.self, forKey: .unavailableReasonEng)
		unavailableReasonFra = try? values?.decodeIfPresent(String.self, forKey: .unavailableReasonFra)
		urlCheckAddress = try? values?.decodeIfPresent(String.self, forKey: .urlCheckAddress)
		urlCheckTransaction = try? values?.decodeIfPresent(String.self, forKey: .urlCheckTransaction)
		walletInfo = try? values?.decodeIfPresent(String.self, forKey: .walletInfo)
		walletInfoDeu = try? values?.decodeIfPresent(String.self, forKey: .walletInfoDeu)
		walletInfoEng = try? values?.decodeIfPresent(String.self, forKey: .walletInfoEng)
		walletInfoFra = try? values?.decodeIfPresent(String.self, forKey: .walletInfoFra)
		walletMinDeposit = try? values?.decodeIfPresent(String.self, forKey: .walletMinDeposit)
		walletSmallDeposit = try? values?.decodeIfPresent(String.self, forKey: .walletSmallDeposit)
		walletSmallDepositFee = try? values?.decodeIfPresent(String.self, forKey: .walletSmallDepositFee)
		walletWithdrawFee = try? values?.decodeIfPresent(String.self, forKey: .walletWithdrawFee)
		withdrawActive = try? values?.decodeIfPresent(Bool.self, forKey: .withdrawActive)
		balance = try? values?.decodeIfPresent(String.self, forKey: .balance)
		cryptocoinId = try? values?.decodeIfPresent(String.self, forKey: .cryptocoinId)
		cryptocoinSymbol = try? values?.decodeIfPresent(String.self, forKey: .cryptocoinSymbol)
		deleted = (try? values?.decodeIfPresent(Bool.self, forKey: .deleted)) ?? false
		isDefault = try? values?.decodeIfPresent(Bool.self, forKey: .isDefault)
		pendingTransactionsCount = try? values?.decodeIfPresent(Int.self, forKey: .pendingTransactionsCount)
		androidSupportedVersion = try? values?.decodeIfPresent(String.self, forKey: .androidSupportedVersion)
		circulatingSupply = try? values?.decodeIfPresent(String.self, forKey: .circulatingSupply)
		family = try? values?.decodeIfPresent(String.self, forKey: .family)
		iosSupportedVersion = try? values?.decodeIfPresent(String.self, forKey: .iosSupportedVersion)
		hasWallets = (try? values?.decodeIfPresent(Bool.self, forKey: .hasWallets)) ?? true
		logoColor = try? values?.decodeIfPresent(String.self, forKey: .logoColor)
		logoWhite = try? values?.decodeIfPresent(String.self, forKey: .logoWhite)
		minWithdrawEuro = try? values?.decodeIfPresent(String.self, forKey: .minWithdrawEuro)
		nameDeu = try? values?.decodeIfPresent(String.self, forKey: .nameDeu)
		nameEng = try? values?.decodeIfPresent(String.self, forKey: .nameEng)
		nameFra = try? values?.decodeIfPresent(String.self, forKey: .nameFra)
		numericCharacterReference = try? values?.decodeIfPresent(String.self, forKey: .numericCharacterReference)
		precision = try? values?.decodeIfPresent(Int.self, forKey: .precision)
		symbolCharacter = try? values?.decodeIfPresent(String.self, forKey: .symbolCharacter)
		toEurRate = try? values?.decodeIfPresent(String.self, forKey: .toEurRate)
		fiatId = try? values?.decodeIfPresent(String.self, forKey: .fiatId)
		fiatSymbol = try? values?.decodeIfPresent(String.self, forKey: .fiatSymbol)
	}
}
