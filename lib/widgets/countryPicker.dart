import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ivory/utils/colors.dart';

class CountryCodePicker extends StatefulWidget {
  const CountryCodePicker({Key? key}) : super(key: key);

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: CountryPickerDropdown(
        initialValue: 'IN',
        isDense: true,
        isExpanded: false,
        selectedItemBuilder: ((country) => SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CountryPickerUtils.getDefaultFlagImage(country),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text("+${country.phoneCode}"),
                ],
              ),
            )),

        icon: VerticalDivider(
          width: 1,
          thickness: 2,
          color: ColorRes.deepBlue.withOpacity(0.5),
        ),

        itemBuilder: _buildDropdownItem,
        // itemFilter: ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
        priorityList: [
          CountryPickerUtils.getCountryByIsoCode('GB'),
          CountryPickerUtils.getCountryByIsoCode('CN'),
        ],
        sortComparator: (Country a, Country b) =>
            a.isoCode.compareTo(b.isoCode),
        onValuePicked: (Country country) {
          _buildDropdownItem(country);
        },
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}"),
        ],
      );
}
