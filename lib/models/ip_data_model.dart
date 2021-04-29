import 'dart:convert';

IpDataModel ipDataModelFromJson(String str) =>
    IpDataModel.fromJson(json.decode(str));

class IpDataModel {
  IpDataModel({
    this.ip,
    this.version,
    this.city,
    this.region,
    this.regionCode,
    this.country,
    this.countryName,
    this.countryCode,
    this.countryCodeIso3,
    this.countryCapital,
    this.countryTld,
    this.continentCode,
    this.inEu,
    this.postal,
    this.latitude,
    this.longitude,
    this.timezone,
    this.utcOffset,
    this.countryCallingCode,
    this.currency,
    this.currencyName,
    this.languages,
    this.countryArea,
    this.countryPopulation,
    this.org,
  });

  String ip;
  String version;
  String city;
  String region;
  String regionCode;
  String country;
  String countryName;
  String countryCode;
  String countryCodeIso3;
  String countryCapital;
  String countryTld;
  String continentCode;
  bool inEu;
  String postal;
  double latitude;
  double longitude;
  String timezone;
  String utcOffset;
  String countryCallingCode;
  String currency;
  String currencyName;
  String languages;
  double countryArea;
  double countryPopulation;
  String org;

  factory IpDataModel.fromJson(Map<String, dynamic> json) => IpDataModel(
        ip: json["ip"] == null ? null : json["ip"],
        version: json["version"] == null ? null : json["version"],
        city: json["city"] == null ? null : json["city"],
        region: json["region"] == null ? null : json["region"],
        regionCode: json["region_code"] == null ? null : json["region_code"],
        country: json["country"] == null ? null : json["country"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        countryCodeIso3: json["country_code_iso3"] == null
            ? null
            : json["country_code_iso3"],
        countryCapital:
            json["country_capital"] == null ? null : json["country_capital"],
        countryTld: json["country_tld"] == null ? null : json["country_tld"],
        continentCode:
            json["continent_code"] == null ? null : json["continent_code"],
        inEu: json["in_eu"] == null ? null : json["in_eu"],
        postal: json["postal"] == null ? null : json["postal"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        timezone: json["timezone"] == null ? null : json["timezone"],
        utcOffset: json["utc_offset"] == null ? null : json["utc_offset"],
        countryCallingCode: json["country_calling_code"] == null
            ? null
            : json["country_calling_code"],
        currency: json["currency"] == null ? null : json["currency"],
        currencyName:
            json["currency_name"] == null ? null : json["currency_name"],
        languages: json["languages"] == null ? null : json["languages"],
        countryArea: json["country_area"] == null ? null : json["country_area"],
        countryPopulation: json["country_population"] == null
            ? null
            : json["country_population"],
        org: json["org"] == null ? null : json["org"],
      );

  Map<String, dynamic> toJson() => {
        "ip": ip == null ? null : ip,
        "version": version == null ? null : version,
        "city": city == null ? null : city,
        "region": region == null ? null : region,
        "region_code": regionCode == null ? null : regionCode,
        "country": country == null ? null : country,
        "country_name": countryName == null ? null : countryName,
        "country_code": countryCode == null ? null : countryCode,
        "country_code_iso3": countryCodeIso3 == null ? null : countryCodeIso3,
        "country_capital": countryCapital == null ? null : countryCapital,
        "country_tld": countryTld == null ? null : countryTld,
        "continent_code": continentCode == null ? null : continentCode,
        "in_eu": inEu == null ? null : inEu,
        "postal": postal == null ? null : postal,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "timezone": timezone == null ? null : timezone,
        "utc_offset": utcOffset == null ? null : utcOffset,
        "country_calling_code":
            countryCallingCode == null ? null : countryCallingCode,
        "currency": currency == null ? null : currency,
        "currency_name": currencyName == null ? null : currencyName,
        "languages": languages == null ? null : languages,
        "country_area": countryArea == null ? null : countryArea,
        "country_population":
            countryPopulation == null ? null : countryPopulation,
        "org": org == null ? null : org,
      };
}
