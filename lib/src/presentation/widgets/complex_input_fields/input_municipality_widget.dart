import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/blocs/municipality/municipality_bloc.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';

class MunicipalityInputWidget extends StatelessWidget {
  const MunicipalityInputWidget({
    Key? key,
    this.onChanged,
    this.provinceLabel,
    this.municipalityLabel,
    this.errorText,
    this.separatorWidget,
  }) : super(key: key);

  final dynamic Function(String)? onChanged;
  //
  final String? provinceLabel;
  final String? municipalityLabel;
  final String? errorText;

  //
  final Widget? separatorWidget;

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.I<MunicipalityBloc>();
    return BlocBuilder<MunicipalityBloc, MunicipalityState>(
      bloc: bloc..add(const MunicipalityEvent.provincesRequested()),
      builder: (context, state) => Column(
        mainAxisSize: MainAxisSize.min,
        children: state.map(
          initial: (_) => [],
          inProgress: (_) => [],
          provinceSelection: (state) => [
            _ProvinceSelector(
              provinces: state.provinces,
              onProvinceSelected: (prov) =>
                  bloc.add(MunicipalityEvent.provinceSelected(prov)),
              provinceLabel: provinceLabel,
              selectedProvince: null,
              errorText: errorText,
            ),
          ],
          municipalitySelection: (state) => [
            _ProvinceSelector(
              provinces: state.provinces,
              onProvinceSelected: (prov) =>
                  bloc.add(MunicipalityEvent.provinceSelected(prov)),
              provinceLabel: provinceLabel,
              selectedProvince: state.provinceSelected,
              errorText: null,
            ),
            separatorWidget ?? const SizedBox(height: 8),
            _MunicipalitySelector(
              municipalities: state.provinceSelected.municipalities,
              onMunicipalitySelected: (mun) {
                onChanged?.call(mun.code);
                bloc.add(MunicipalityEvent.municipalitySelected(mun));
              },
              municipalityLabel: municipalityLabel,
              selectedMunicipality: null,
              errorText: errorText,
            ),
          ],
          municipalityCodeReady: (state) => [
            _ProvinceSelector(
              provinces: state.provinces,
              onProvinceSelected: (prov) =>
                  bloc.add(MunicipalityEvent.provinceSelected(prov)),
              provinceLabel: provinceLabel,
              selectedProvince: state.provinceSelected,
              errorText: null,
            ),
            separatorWidget ?? const SizedBox(height: 8),
            _MunicipalitySelector(
              municipalities: state.provinceSelected.municipalities,
              onMunicipalitySelected: (mun) {
                onChanged?.call(mun.code);
                bloc.add(MunicipalityEvent.municipalitySelected(mun));
              },
              municipalityLabel: municipalityLabel,
              selectedMunicipality: state.municipalitySelected,
              errorText: errorText,
            ),
          ],
        ),
      ),
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
      decoration: TextFieldDecorations.decoration(
        labelText: provinceLabel ?? 'Provincia',
        errorText: selectedProvince == null ? errorText : null,
      ),
    );
  }
}
