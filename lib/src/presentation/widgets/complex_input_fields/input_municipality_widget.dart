import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MunicipalitySelector extends StatelessWidget {
  const MunicipalitySelector({
    Key? key,
    required this.municipalities,
    required this.onMunicipalitySelected,
    required this.municipalityLabel,
    required this.selectedMunicipality,
    required this.errorText,
  }) : super(key: key);

  final List<MunicipalityEntity>? municipalities;
  final Function(MunicipalityEntity)? onMunicipalitySelected;
  final String? municipalityLabel;
  final MunicipalityEntity? selectedMunicipality;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<MunicipalityEntity>(
      items: municipalities
              ?.map(
                (e) => DropdownMenuItem(
                  value: e,
                  onTap: () => onMunicipalitySelected?.call(e),
                  child: Text(e.name),
                ),
              )
              .toList() ??
          const <DropdownMenuItem<MunicipalityEntity>>[],
      value: selectedMunicipality,
      onChanged: (value) => onMunicipalitySelected?.call(value!),
      decoration: TextFieldDecorations.decoration(
        labelText: municipalityLabel ?? 'Municipio',
        errorText: errorText,
      ),
    );
  }
}

class ProvinceSelector extends StatelessWidget {
  const ProvinceSelector({
    Key? key,
    required this.provinces,
    required this.onProvinceSelected,
    required this.provinceLabel,
    required this.selectedProvince,
    required this.errorText,
  }) : super(key: key);

  final List<ProvinceEntity>? provinces;
  final Function(ProvinceEntity)? onProvinceSelected;
  final String? provinceLabel;
  final ProvinceEntity? selectedProvince;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<ProvinceEntity>(
      items: provinces
              ?.map(
                (e) => DropdownMenuItem(
                  value: e,
                  onTap: () => onProvinceSelected?.call(e),
                  child: Text(e.name),
                ),
              )
              .toList() ??
          const <DropdownMenuItem<ProvinceEntity>>[],
      value: selectedProvince,
      onChanged: (value) => onProvinceSelected?.call(value!),
      decoration: TextFieldDecorations.decoration(
        labelText: provinceLabel ?? 'Provincia',
        errorText: errorText,
      ),
    );
  }
}
