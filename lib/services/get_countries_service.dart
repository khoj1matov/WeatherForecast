import 'package:country_state_city/country_state_city.dart';

class GetCountriesServoce {
  static void mainn() async {
    final countries = await getAllCountries();
    final states = await getAllStates();
    final cities = await getAllCities();
    final country = await getCountryFromCode('AF');
    if (country != null) {
      final countryStates = await getStatesOfCountry(country.isoCode);
      final countryCitis = await getCountryCities(country.isoCode);
    }
    print(countries[10].name);
  }
}
