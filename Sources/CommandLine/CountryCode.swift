import Foundation

public enum CountryCode {
    
    case afghanistan
    case alandIslands
    case albania
    case algeria
    case americanSamoa
    case andorra
    case angola
    case anguilla
    case antarctica
    case antiguaAndBarbuda
    case argentina
    case armenia
    case aruba
    case australia
    case austria
    case azerbaijan
    case bahamas
    case bahrain
    case bangladesh
    case barbados
    case belarus
    case belgium
    case belize
    case benin
    case bermuda
    case bhutan
    case bolivia
    case bonaire
    case bosniaAndHerzegovina
    case botswana
    case bouvetIsland
    case brazil
    case britishIndianOceanTerritory
    case bruneiDarussalam
    case bulgaria
    case burkinaFaso
    case burundi
    case cambodia
    case cameroon
    case canada
    case capeVerde
    case caymanIslands
    case centralAfricanRepublic
    case chad
    case chile
    case china
    case christmasIsland
    case cocosKeelingIslands
    case colombia
    case comoros
    case congo
    case congoTheDemocraticRepublicOfThe
    case cookIslands
    case costaRica
    case coteDIvoire
    case croatia
    case cuba
    case curacao
    case cyprus
    case czechRepublic
    case denmark
    case djibouti
    case dominica
    case dominicanRepublic
    case ecuador
    case egypt
    case elSalvador
    case equatorialGuinea
    case eritrea
    case estonia
    case ethiopia
    case falklandIslandsMalvinas
    case faroeIslands
    case fiji
    case finland
    case france
    case frenchGuiana
    case frenchPolynesia
    case frenchSouthernTerritories
    case gabon
    case gambia
    case georgia
    case germany
    case ghana
    case gibraltar
    case greece
    case greenland
    case grenada
    case guadeloupe
    case guam
    case guatemala
    case guernsey
    case guinea
    case guineaBissau
    case guyana
    case haiti
    case heardIslandAndMcdonaldIslands
    case holySeeVaticanCityState
    case honduras
    case hongKong
    case hungary
    case iceland
    case india
    case indonesia
    case iranIslamicRepublicOf
    case iraq
    case ireland
    case isleOfMan
    case israel
    case italy
    case jamaica
    case japan
    case jersey
    case jordan
    case kazakhstan
    case kenya
    case kiribati
    case koreaDemocraticPeopleSRepublicOf
    case koreaRepublicOf
    case kuwait
    case kyrgyzstan
    case laoPeopleSDemocraticRepublic
    case latvia
    case lebanon
    case lesotho
    case liberia
    case libyanArabJamahiriya
    case liechtenstein
    case lithuania
    case luxembourg
    case macao
    case macedoniaTheFormerYugoslavRepublicOf
    case madagascar
    case malawi
    case malaysia
    case maldives
    case mali
    case malta
    case marshallIslands
    case martinique
    case mauritania
    case mauritius
    case mayotte
    case mexico
    case micronesiaFederatedStatesOf
    case moldova
    case monaco
    case mongolia
    case montenegro
    case montserrat
    case morocco
    case mozambique
    case myanmar
    case namibia
    case nauru
    case nepal
    case netherlands
    case newCaledonia
    case newZealand
    case nicaragua
    case niger
    case nigeria
    case niue
    case norfolkIsland
    case northernMarianaIslands
    case norway
    case oman
    case pakistan
    case palau
    case palestinianTerritoryOccupied
    case panama
    case papuaNewGuinea
    case paraguay
    case peru
    case philippines
    case pitcairn
    case poland
    case portugal
    case puertoRico
    case qata
    case reunion
    case romania
    case russianFederation
    case rwanda
    case saintBartholemy
    case saintHelena
    case saintKittsAndNevis
    case saintLucia
    case saintMartin
    case saintPierreAndMiquelon
    case saintVincentAndTheGrenadines
    case samoa
    case sanMarino
    case saoTomeAndPrincipe
    case saudiArabia
    case senegal
    case serbia
    case seychelles
    case sierraLeone
    case sintMaarten
    case singapore
    case slovakia
    case slovenia
    case solomonIslands
    case somalia
    case southAfrica
    case southGeorgiaAndTheSouthSandwichIslands
    case spain
    case sriLanka
    case sudan
    case suriname
    case svalbardAndJanMayen
    case swaziland
    case sweden
    case switzerland
    case syrianArabRepublic
    case taiwan
    case tajikistan
    case tanzaniaUnitedRepublicOf
    case thailand
    case timorLeste
    case togo
    case tokelau
    case tonga
    case trinidadAndTobago
    case tunisia
    case turkey
    case turkmenistan
    case turksAndCaicosIslands
    case tuvalu
    case uganda
    case ukraine
    case unitedArabEmirates
    case unitedKingdom
    case unitedStates
    case unitedStatesMinorOutlyingIslands
    case uruguay
    case uzbekistan
    case vanuatu
    case venezuela
    case vietNam
    case virginIslandsBritish
    case virginIslandsUS
    case wallisAndFutuna
    case westernSahara
    case yemen
    case zambia
    case zimbabwe
    
    var rawValue: String {
        switch  self {
        case .afghanistan: return "AF"
        case .alandIslands: return "AX"
        case .albania: return "AL"
        case .algeria: return "DZ"
        case .americanSamoa: return "AS"
        case .andorra: return "AD"
        case .angola: return "AO"
        case .anguilla: return "AI"
        case .antarctica: return "AQ"
        case .antiguaAndBarbuda: return "AG"
        case .argentina: return "AR"
        case .armenia: return "AM"
        case .aruba: return "AW"
        case .australia: return "AU"
        case .austria: return "AT"
        case .azerbaijan: return "AZ"
        case .bahamas: return "BS"
        case .bahrain: return "BH"
        case .bangladesh: return "BD"
        case .barbados: return "BB"
        case .belarus: return "BY"
        case .belgium: return "BE"
        case .belize: return "BZ"
        case .benin: return "BJ"
        case .bermuda: return "BM"
        case .bhutan: return "BT"
        case .bolivia: return "BO"
        case .bonaire: return "BQ"
        case .bosniaAndHerzegovina: return "BA"
        case .botswana: return "BW"
        case .bouvetIsland: return "BV"
        case .brazil: return "BR"
        case .britishIndianOceanTerritory: return "IO"
        case .bruneiDarussalam: return "BN"
        case .bulgaria: return "BG"
        case .burkinaFaso: return "BF"
        case .burundi: return "BI"
        case .cambodia: return "KH"
        case .cameroon: return "CM"
        case .canada: return "CA"
        case .capeVerde: return "CV"
        case .caymanIslands: return "KY"
        case .centralAfricanRepublic: return "CF"
        case .chad: return "TD"
        case .chile: return "CL"
        case .china: return "CN"
        case .christmasIsland: return "CX"
        case .cocosKeelingIslands: return "CC"
        case .colombia: return "CO"
        case .comoros: return "KM"
        case .congo: return "CG"
        case .congoTheDemocraticRepublicOfThe: return "CD"
        case .cookIslands: return "CK"
        case .costaRica: return "CR"
        case .coteDIvoire: return "CI"
        case .croatia: return "HR"
        case .cuba: return "CU"
        case .curacao: return "CW"
        case .cyprus: return "CY"
        case .czechRepublic: return "CZ"
        case .denmark: return "DK"
        case .djibouti: return "DJ"
        case .dominica: return "DM"
        case .dominicanRepublic: return "DO"
        case .ecuador: return "EC"
        case .egypt: return "EG"
        case .elSalvador: return "SV"
        case .equatorialGuinea: return "GQ"
        case .eritrea: return "ER"
        case .estonia: return "EE"
        case .ethiopia: return "ET"
        case .falklandIslandsMalvinas: return "FK"
        case .faroeIslands: return "FO"
        case .fiji: return "FJ"
        case .finland: return "FI"
        case .france: return "FR"
        case .frenchGuiana: return "GF"
        case .frenchPolynesia: return "PF"
        case .frenchSouthernTerritories: return "TF"
        case .gabon: return "GA"
        case .gambia: return "GM"
        case .georgia: return "GE"
        case .germany: return "DE"
        case .ghana: return "GH"
        case .gibraltar: return "GI"
        case .greece: return "GR"
        case .greenland: return "GL"
        case .grenada: return "GD"
        case .guadeloupe: return "GP"
        case .guam: return "GU"
        case .guatemala: return "GT"
        case .guernsey: return "GG"
        case .guinea: return "GN"
        case .guineaBissau: return "GW"
        case .guyana: return "GY"
        case .haiti: return "HT"
        case .heardIslandAndMcdonaldIslands: return "HM"
        case .holySeeVaticanCityState: return "VA"
        case .honduras: return "HN"
        case .hongKong: return "HK"
        case .hungary: return "HU"
        case .iceland: return "IS"
        case .india: return "IN"
        case .indonesia: return "ID"
        case .iranIslamicRepublicOf: return "IR"
        case .iraq: return "IQ"
        case .ireland: return "IE"
        case .isleOfMan: return "IM"
        case .israel: return "IL"
        case .italy: return "IT"
        case .jamaica: return "JM"
        case .japan: return "JP"
        case .jersey: return "JE"
        case .jordan: return "JO"
        case .kazakhstan: return "KZ"
        case .kenya: return "KE"
        case .kiribati: return "KI"
        case .koreaDemocraticPeopleSRepublicOf: return "KP"
        case .koreaRepublicOf: return "KR"
        case .kuwait: return "KW"
        case .kyrgyzstan: return "KG"
        case .laoPeopleSDemocraticRepublic: return "LA"
        case .latvia: return "LV"
        case .lebanon: return "LB"
        case .lesotho: return "LS"
        case .liberia: return "LR"
        case .libyanArabJamahiriya: return "LY"
        case .liechtenstein: return "LI"
        case .lithuania: return "LT"
        case .luxembourg: return "LU"
        case .macao: return "MO"
        case .macedoniaTheFormerYugoslavRepublicOf: return "MK"
        case .madagascar: return "MG"
        case .malawi: return "MW"
        case .malaysia: return "MY"
        case .maldives: return "MV"
        case .mali: return "ML"
        case .malta: return "MT"
        case .marshallIslands: return "MH"
        case .martinique: return "MQ"
        case .mauritania: return "MR"
        case .mauritius: return "MU"
        case .mayotte: return "YT"
        case .mexico: return "MX"
        case .micronesiaFederatedStatesOf: return "FM"
        case .moldova: return "MD"
        case .monaco: return "MC"
        case .mongolia: return "MN"
        case .montenegro: return "ME"
        case .montserrat: return "MS"
        case .morocco: return "MA"
        case .mozambique: return "MZ"
        case .myanmar: return "MM"
        case .namibia: return "NA"
        case .nauru: return "NR"
        case .nepal: return "NP"
        case .netherlands: return "NL"
        case .newCaledonia: return "NC"
        case .newZealand: return "NZ"
        case .nicaragua: return "NI"
        case .niger: return "NE"
        case .nigeria: return "NG"
        case .niue: return "NU"
        case .norfolkIsland: return "NF"
        case .northernMarianaIslands: return "MP"
        case .norway: return "NO"
        case .oman: return "OM"
        case .pakistan: return "PK"
        case .palau: return "PW"
        case .palestinianTerritoryOccupied: return "PS"
        case .panama: return "PA"
        case .papuaNewGuinea: return "PG"
        case .paraguay: return "PY"
        case .peru: return "PE"
        case .philippines: return "PH"
        case .pitcairn: return "PN"
        case .poland: return "PL"
        case .portugal: return "PT"
        case .puertoRico: return "PR"
        case .qata: return "QA"
        case .reunion: return "RE"
        case .romania: return "RO"
        case .russianFederation: return "RU"
        case .rwanda: return "RW"
        case .saintBartholemy: return "BL"
        case .saintHelena: return "SH"
        case .saintKittsAndNevis: return "KN"
        case .saintLucia: return "LC"
        case .saintMartin: return "MF"
        case .saintPierreAndMiquelon: return "PM"
        case .saintVincentAndTheGrenadines: return "VC"
        case .samoa: return "WS"
        case .sanMarino: return "SM"
        case .saoTomeAndPrincipe: return "ST"
        case .saudiArabia: return "SA"
        case .senegal: return "SN"
        case .serbia: return "RS"
        case .seychelles: return "SC"
        case .sierraLeone: return "SL"
        case .sintMaarten: return "SX"
        case .singapore: return "SG"
        case .slovakia: return "SK"
        case .slovenia: return "SI"
        case .solomonIslands: return "SB"
        case .somalia: return "SO"
        case .southAfrica: return "ZA"
        case .southGeorgiaAndTheSouthSandwichIslands: return "GS"
        case .spain: return "ES"
        case .sriLanka: return "LK"
        case .sudan: return "SD"
        case .suriname: return "SR"
        case .svalbardAndJanMayen: return "SJ"
        case .swaziland: return "SZ"
        case .sweden: return "SE"
        case .switzerland: return "CH"
        case .syrianArabRepublic: return "SY"
        case .taiwan: return "TW"
        case .tajikistan: return "TJ"
        case .tanzaniaUnitedRepublicOf: return "TZ"
        case .thailand: return "TH"
        case .timorLeste: return "TL"
        case .togo: return "TG"
        case .tokelau: return "TK"
        case .tonga: return "TO"
        case .trinidadAndTobago: return "TT"
        case .tunisia: return "TN"
        case .turkey: return "TR"
        case .turkmenistan: return "TM"
        case .turksAndCaicosIslands: return "TC"
        case .tuvalu: return "TV"
        case .uganda: return "UG"
        case .ukraine: return "UA"
        case .unitedArabEmirates: return "AE"
        case .unitedKingdom: return "GB"
        case .unitedStates: return "US"
        case .unitedStatesMinorOutlyingIslands: return "UM"
        case .uruguay: return "UY"
        case .uzbekistan: return "UZ"
        case .vanuatu: return "VU"
        case .venezuela: return "VE"
        case .vietNam: return "VN"
        case .virginIslandsBritish: return "VG"
        case .virginIslandsUS: return "VI"
        case .wallisAndFutuna: return "WF"
        case .westernSahara: return "EH"
        case .yemen: return "YE"
        case .zambia: return "ZM"
        case .zimbabwe: return "ZW"
        }
    }
    
    
    var description: String {
        switch self {
        case .afghanistan: return "Afghanistan"
        case .alandIslands: return "AlandIslands"
        case .albania: return "Albania"
        case .algeria: return "Algeria"
        case .americanSamoa: return "AmericanSamoa"
        case .andorra: return "Andorra"
        case .angola: return "Angola"
        case .anguilla: return "Anguilla"
        case .antarctica: return "Antarctica"
        case .antiguaAndBarbuda: return "Antigua An dBarbuda"
        case .argentina: return "Argentina"
        case .armenia: return "Armenia"
        case .aruba: return "Aruba"
        case .australia: return "Australia"
        case .austria: return "Austria"
        case .azerbaijan: return "Azerbaijan"
        case .bahamas: return "Bahamas"
        case .bahrain: return "Bahrain"
        case .bangladesh: return "Bangladesh"
        case .barbados: return "Barbados"
        case .belarus: return "Belarus"
        case .belgium: return "Belgium"
        case .belize: return "Belize"
        case .benin: return "Benin"
        case .bermuda: return "Bermuda"
        case .bhutan: return "Bhutan"
        case .bolivia: return "Bolivia"
        case .bonaire: return "Bonaire"
        case .bosniaAndHerzegovina: return "Bosnia And Herzegovina"
        case .botswana: return "Botswana"
        case .bouvetIsland: return "Bouvet Island"
        case .brazil: return "Brazil"
        case .britishIndianOceanTerritory: return "British Indian Ocean Territory"
        case .bruneiDarussalam: return "Brunei Darussalam"
        case .bulgaria: return "Bulgaria"
        case .burkinaFaso: return "Burkina Faso"
        case .burundi: return "Burundi"
        case .cambodia: return "Cambodia"
        case .cameroon: return "Cameroon"
        case .canada: return "Canada"
        case .capeVerde: return "CapeVerde"
        case .caymanIslands: return "Cayman Islands"
        case .centralAfricanRepublic: return "Central African Republic"
        case .chad: return "Chad"
        case .chile: return "Chile"
        case .china: return "China"
        case .christmasIsland: return "Christmas Island"
        case .cocosKeelingIslands: return "Cocos (Keeling) Islands"
        case .colombia: return "Colombia"
        case .comoros: return "Comoros"
        case .congo: return "Congo"
        case .congoTheDemocraticRepublicOfThe: return "Congo, The Democratic Republic Of The"
        case .cookIslands: return "Cook Islands"
        case .costaRica: return "Costa Rica"
        case .coteDIvoire: return "Cote D'Ivoire"
        case .croatia: return "Croatia"
        case .cuba: return "Cuba"
        case .curacao: return "Curacao"
        case .cyprus: return "Cyprus"
        case .czechRepublic: return "Czech Republic"
        case .denmark: return "Denmark"
        case .djibouti: return "Djibouti"
        case .dominica: return "Dominica"
        case .dominicanRepublic: return "Dominican Republic"
        case .ecuador: return "Ecuador"
        case .egypt: return "Egypt"
        case .elSalvador: return "El Salvador"
        case .equatorialGuinea: return "Equatorial Guinea"
        case .eritrea: return "Eritrea"
        case .estonia: return "Estonia"
        case .ethiopia: return "Ethiopia"
        case .falklandIslandsMalvinas: return "Falkland Islands (Malvinas)"
        case .faroeIslands: return "Faroe Islands"
        case .fiji: return "Fiji"
        case .finland: return "Finland"
        case .france: return "France"
        case .frenchGuiana: return "French Guiana"
        case .frenchPolynesia: return "French Polynesia"
        case .frenchSouthernTerritories: return "French Southern Territories"
        case .gabon: return "Gabon"
        case .gambia: return "Gambia"
        case .georgia: return "Georgia"
        case .germany: return "Germany"
        case .ghana: return "Ghana"
        case .gibraltar: return "Gibraltar"
        case .greece: return "Greece"
        case .greenland: return "Greenland"
        case .grenada: return "Grenada"
        case .guadeloupe: return "Guadeloupe"
        case .guam: return "Guam"
        case .guatemala: return "Guatemala"
        case .guernsey: return "Guernsey"
        case .guinea: return "Guinea"
        case .guineaBissau: return "Guinea-Bissau"
        case .guyana: return "Guyana"
        case .haiti: return "Haiti"
        case .heardIslandAndMcdonaldIslands: return "Heard Island And Mcdonald Islands"
        case .holySeeVaticanCityState: return "Holy See (Vatican City State)"
        case .honduras: return "Honduras"
        case .hongKong: return "Hong Kong"
        case .hungary: return "Hungary"
        case .iceland: return "Iceland"
        case .india: return "India"
        case .indonesia: return "Indonesia"
        case .iranIslamicRepublicOf: return "Iran, Islamic Republic Of"
        case .iraq: return "Iraq"
        case .ireland: return "Ireland"
        case .isleOfMan: return "Isle Of Man"
        case .israel: return "Israel"
        case .italy: return "Italy"
        case .jamaica: return "Jamaica"
        case .japan: return "Japan"
        case .jersey: return "Jersey"
        case .jordan: return "Jordan"
        case .kazakhstan: return "Kazakhstan"
        case .kenya: return "Kenya"
        case .kiribati: return "Kiribati"
        case .koreaDemocraticPeopleSRepublicOf: return "Korea, Democratic People's Republic Of"
        case .koreaRepublicOf: return "Korea, Republic Of"
        case .kuwait: return "Kuwait"
        case .kyrgyzstan: return "Kyrgyzstan"
        case .laoPeopleSDemocraticRepublic: return "Lao People's Democratic Republic"
        case .latvia: return "Latvia"
        case .lebanon: return "Lebanon"
        case .lesotho: return "Lesotho"
        case .liberia: return "Liberia"
        case .libyanArabJamahiriya: return "Libyan Arab Jamahiriya"
        case .liechtenstein: return "Liechtenstein"
        case .lithuania: return "Lithuania"
        case .luxembourg: return "Luxembourg"
        case .macao: return "Macao"
        case .macedoniaTheFormerYugoslavRepublicOf: return "Macedonia, The Former Yugoslav Republic Of"
        case .madagascar: return "Madagascar"
        case .malawi: return "Malawi"
        case .malaysia: return "Malaysia"
        case .maldives: return "Maldives"
        case .mali: return "Mali"
        case .malta: return "Malta"
        case .marshallIslands: return "Marshall Islands"
        case .martinique: return "Martinique"
        case .mauritania: return "Mauritania"
        case .mauritius: return "Mauritius"
        case .mayotte: return "Mayotte"
        case .mexico: return "Mexico"
        case .micronesiaFederatedStatesOf: return "Micronesia, Federated States Of"
        case .moldova: return "Moldova"
        case .monaco: return "Monaco"
        case .mongolia: return "Mongolia"
        case .montenegro: return "Montenegro"
        case .montserrat: return "Montserrat"
        case .morocco: return "Morocco"
        case .mozambique: return "Mozambique"
        case .myanmar: return "Myanmar"
        case .namibia: return "Namibia"
        case .nauru: return "Nauru"
        case .nepal: return "Nepal"
        case .netherlands: return "Netherlands"
        case .newCaledonia: return "New Caledonia"
        case .newZealand: return "New Zealand"
        case .nicaragua: return "Nicaragua"
        case .niger: return "Niger"
        case .nigeria: return "Nigeria"
        case .niue: return "Niue"
        case .norfolkIsland: return "Norfolk Island"
        case .northernMarianaIslands: return "Northern Mariana Islands"
        case .norway: return "Norway"
        case .oman: return "Oman"
        case .pakistan: return "Pakistan"
        case .palau: return "Palau"
        case .palestinianTerritoryOccupied: return "Palestinian Territory, Occupied"
        case .panama: return "Panama"
        case .papuaNewGuinea: return "Papua New Guinea"
        case .paraguay: return "Paraguay"
        case .peru: return "Peru"
        case .philippines: return "Philippines"
        case .pitcairn: return "Pitcairn"
        case .poland: return "Poland"
        case .portugal: return "Portugal"
        case .puertoRico: return "Puerto Rico"
        case .qata: return "Qata"
        case .reunion: return "Reunion"
        case .romania: return "Romania"
        case .russianFederation: return "Russian Federation"
        case .rwanda: return "Rwanda"
        case .saintBartholemy: return "Saint Bartholemy"
        case .saintHelena: return "Saint Helena"
        case .saintKittsAndNevis: return "Saint Kitts and Nevis"
        case .saintLucia: return "Saint Lucia"
        case .saintMartin: return "Saint Martin"
        case .saintPierreAndMiquelon: return "Saint Pierre and Miquelon"
        case .saintVincentAndTheGrenadines: return "Saint Vincent and The Grenadines"
        case .samoa: return "Samoa"
        case .sanMarino: return "San Marino"
        case .saoTomeAndPrincipe: return "Sao Tome and Principe"
        case .saudiArabia: return "Saudi Arabia"
        case .senegal: return "Senegal"
        case .serbia: return "Serbia"
        case .seychelles: return "Seychelles"
        case .sierraLeone: return "Sierra Leone"
        case .sintMaarten: return "Sint Maarten"
        case .singapore: return "Singapore"
        case .slovakia: return "Slovakia"
        case .slovenia: return "Slovenia"
        case .solomonIslands: return "Solomon Islands"
        case .somalia: return "Somalia"
        case .southAfrica: return "South Africa"
        case .southGeorgiaAndTheSouthSandwichIslands: return "South Georgia and The South Sandwich Islands"
        case .spain: return "Spain"
        case .sriLanka: return "Sri Lanka"
        case .sudan: return "Sudan"
        case .suriname: return "Suriname"
        case .svalbardAndJanMayen: return "Svalbard and Jan Mayen"
        case .swaziland: return "Swaziland"
        case .sweden: return "Sweden"
        case .switzerland: return "Switzerland"
        case .syrianArabRepublic: return "Syrian Arab Republic"
        case .taiwan: return "Taiwan"
        case .tajikistan: return "Tajikistan"
        case .tanzaniaUnitedRepublicOf: return "Tanzania, United Republic Of"
        case .thailand: return "Thailand"
        case .timorLeste: return "Timor-Leste"
        case .togo: return "Togo"
        case .tokelau: return "Tokelau"
        case .tonga: return "Tonga"
        case .trinidadAndTobago: return "Trinidad And Tobago"
        case .tunisia: return "Tunisia"
        case .turkey: return "Turkey"
        case .turkmenistan: return "Turkmenistan"
        case .turksAndCaicosIslands: return "Turks and Caicos Islands"
        case .tuvalu: return "Tuvalu"
        case .uganda: return "Uganda"
        case .ukraine: return "Ukraine"
        case .unitedArabEmirates: return "United Arab Emirates"
        case .unitedKingdom: return "United Kingdom"
        case .unitedStates: return "United States"
        case .unitedStatesMinorOutlyingIslands: return "United States Minor Outlying Islands"
        case .uruguay: return "Uruguay"
        case .uzbekistan: return "Uzbekistan"
        case .vanuatu: return "Vanuatu"
        case .venezuela: return "Venezuela"
        case .vietNam: return "Viet Nam"
        case .virginIslandsBritish: return "Virgin Islands, British"
        case .virginIslandsUS: return "Virgin Islands, U.S."
        case .wallisAndFutuna: return "Wallis and Futuna"
        case .westernSahara: return "Western Sahara"
        case .yemen: return "Yemen"
        case .zambia: return "Zambia"
        case .zimbabwe: return "Zimbabwe"
        }
    }
}
