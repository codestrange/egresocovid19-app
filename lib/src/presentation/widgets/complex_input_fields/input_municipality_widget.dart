import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MunicipalityInputWidget extends StatefulWidget {
  const MunicipalityInputWidget({
    Key? key,
    required this.provinces,
    this.provinceSelected,
    this.municipalitySelected,
    this.onProvinceChanged,
    this.onMunicipalityChanged,
    this.provinceLabel,
    this.municipalityLabel,
    this.errorText,
    this.separatorWidget,
  }) : super(key: key);

  final List<ProvinceEntity> provinces;
  final ProvinceEntity? provinceSelected;
  final MunicipalityEntity? municipalitySelected;

  //
  final dynamic Function(ProvinceEntity)? onProvinceChanged;
  final dynamic Function(MunicipalityEntity)? onMunicipalityChanged;
  //
  final String? provinceLabel;
  final String? municipalityLabel;
  final String? errorText;
  //
  final Widget? separatorWidget;

  @override
  State<MunicipalityInputWidget> createState() =>
      _MunicipalityInputWidgetState();
}

class _MunicipalityInputWidgetState extends State<MunicipalityInputWidget> {
  ProvinceEntity? provinceSelected;
  MunicipalityEntity? municipalitySelected;
  @override
  void initState() {
    provinceSelected = widget.provinceSelected;
    municipalitySelected = widget.municipalitySelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ProvinceSelector(
          provinces: widget.provinces,
          onProvinceSelected: (prov) {
            widget.onProvinceChanged?.call(prov);
            setState(() {
              provinceSelected = prov;
            });
          },
          provinceLabel: widget.provinceLabel,
          selectedProvince: provinceSelected,
          errorText: provinceSelected != null ? null : widget.errorText,
        ),
        if (provinceSelected != null) ...[
          widget.separatorWidget ?? const SizedBox(height: 8),
          _MunicipalitySelector(
            municipalities: provinceSelected!.municipalities,
            onMunicipalitySelected: (mun) {
              widget.onMunicipalityChanged?.call(mun);
              setState(() {
                municipalitySelected = mun;
              });
            },
            municipalityLabel: widget.municipalityLabel,
            selectedMunicipality: municipalitySelected,
            errorText: widget.errorText,
          ),
        ]
      ],
    );
  }
}

class _MunicipalitySelector extends StatelessWidget {
  const _MunicipalitySelector({
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

class _ProvinceSelector extends StatelessWidget {
  const _ProvinceSelector({
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
        errorText: selectedProvince == null ? errorText : null,
      ),
    );
  }
}
