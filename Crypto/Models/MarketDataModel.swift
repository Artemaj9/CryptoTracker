//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Artem on 09.07.2023.
//

import Foundation
/*
 https://api.coingecko.com/api/v3/global
 
 JSON RESPOBSE:
 {
   "data": {
     "active_cryptocurrencies": 9879,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 774,
     "total_market_cap": {
       "btc": 40324237.78835837,
       "eth": 654459742.4670007,
       "ltc": 12620215053.567974,
       "bch": 4541637311.422901,
       "bnb": 5207699760.831429,
       "eos": 1661346483749.5337,
       "xrp": 2602614013187.2837,
       "xlm": 12315983511767.54,
       "link": 198611369249.25424,
       "dot": 239956908685.72122,
       "yfi": 174397113.83842304,
       "usd": 1222197492091.2278,
       "aed": 4489009168701.856,
       "ars": 315765608194831.3,
       "aud": 1827175473096.4507,
       "bdt": 131744588482068.19,
       "bhd": 457148305546.8198,
       "bmd": 1222197492091.2278,
       "brl": 5957974445433.804,
       "cad": 1622283841127.2944,
       "chf": 1086207243738.7134,
       "clp": 973393599760577,
       "cny": 8825732529889.168,
       "czk": 26559573700634.492,
       "dkk": 8301776465029.673,
       "eur": 1114228565639.8896,
       "gbp": 951978181972.3029,
       "hkd": 9566384210096.46,
       "huf": 428600216526550.56,
       "idr": 18530591715839596,
       "ils": 4510802172183.3545,
       "inr": 101014500501590.8,
       "jpy": 173655930663782.38,
       "krw": 1586864557806489.2,
       "kwd": 372531906576.867,
       "lkr": 379882329402843,
       "mmk": 2546716148244818.5,
       "mxn": 20958242594380.395,
       "myr": 5707662288066.045,
       "ngn": 931998386690982.2,
       "nok": 12987192770710.615,
       "nzd": 1967636519875.0337,
       "php": 67871067464217.48,
       "pkr": 332895520030019.44,
       "pln": 4988435729895.096,
       "rub": 111514369823406.97,
       "sar": 4585073891580.255,
       "sek": 13225154622420.76,
       "sgd": 1645933362599.2578,
       "thb": 42918030812222.33,
       "try": 31850709861198.348,
       "twd": 38228259816877.11,
       "uah": 44789936269134.55,
       "vef": 122378634883.09496,
       "vnd": 28911081675418016,
       "zar": 22995034714950.45,
       "xdr": 909396821347.8451,
       "xag": 52943358735.98145,
       "xau": 634613825.7934512,
       "bits": 40324237788358.37,
       "sats": 4032423778835837
     },
     "total_volume": {
       "btc": 1295546.42383363,
       "eth": 21026633.741877835,
       "ltc": 405465183.6564065,
       "bch": 145914772.35217595,
       "bnb": 167314180.542111,
       "eos": 53376123488.4809,
       "xrp": 83617384043.33882,
       "xlm": 395690762424.55035,
       "link": 6381031937.021698,
       "dot": 7709390976.057306,
       "yfi": 5603070.747328654,
       "usd": 39267043270.79318,
       "aed": 144223923229.2958,
       "ars": 10144990380563.848,
       "aud": 58703915553.4897,
       "bdt": 4232720562833.6133,
       "bhd": 14687366330.920977,
       "bmd": 39267043270.79318,
       "brl": 191419178871.67978,
       "cad": 52121109885.48743,
       "chf": 34897917167.18184,
       "clp": 31273414361137.234,
       "cny": 283555172867.0515,
       "czk": 853312117317.6073,
       "dkk": 266721391416.86295,
       "eur": 35798192668.251335,
       "gbp": 30585374872.92373,
       "hkd": 307351001089.15247,
       "huf": 13770166734201.713,
       "idr": 595355129958785.9,
       "ils": 144924093877.85797,
       "inr": 3245417199626.73,
       "jpy": 5579257843130.657,
       "krw": 50983150971499.805,
       "kwd": 11968791124.154125,
       "lkr": 12204947206157.18,
       "mmk": 81821484529844.4,
       "mxn": 673351258007.562,
       "myr": 183377092074.60452,
       "ngn": 29943459396145.25,
       "nok": 417255528499.776,
       "nzd": 63216680501.38556,
       "php": 2180577329112.5535,
       "pkr": 10695344143854.828,
       "pln": 160269615121.04007,
       "rub": 3582759425957.0835,
       "sar": 147310312830.38107,
       "sek": 424900821824.59894,
       "sgd": 52880927172.77722,
       "thb": 1378880405094.9377,
       "try": 1023306961778.4819,
       "twd": 1228206359536.8523,
       "uah": 1439021415898.0588,
       "vef": 3931809042.704531,
       "vnd": 928861908570613.5,
       "zar": 738789785618.3397,
       "xdr": 29217311085.369316,
       "xag": 1700976455.801575,
       "xau": 20389019.547926717,
       "bits": 1295546423833.6301,
       "sats": 129554642383363
     },
     "market_cap_percentage": {
       "btc": 48.171568925744104,
       "eth": 18.366769634751805,
       "usdt": 6.818968013246662,
       "bnb": 2.9931389039100633,
       "usdc": 2.2495021163891944,
       "xrp": 2.0086466060110393,
       "steth": 1.1611349460850335,
       "ada": 0.8203709835086037,
       "doge": 0.7541723496237166,
       "sol": 0.7016076001730583
     },
     "market_cap_change_percentage_24h_usd": 0.3674563446306347,
     "updated_at": 1688921387
   }
 }
 
 
 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage  = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        
        //        if let item = totalMarketCap.first(where: { (key,value) -> Bool in
        //            return key == "usd"
        //        }) { return "\(item.value)"
        //        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
        
        
        var volume: String {
            if let item = totalVolume.first(where: { $0.key == "usd" }) {
                return  "$" + item.value.formattedWithAbbreviations()
            }
            return ""
        }
        
        var btcDominance: String {
            if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
                return item.value.asPercentString()
            }
            return ""
        }
    }

