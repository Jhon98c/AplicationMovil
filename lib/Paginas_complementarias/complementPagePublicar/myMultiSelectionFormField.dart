/*import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas_complementarias/complementPagePublicar/myMultiselectionField.dart';

class MyMultiSelectionFormField<T> extends FormField<List<T>> {
  MyMultiSelectionFormField({
    Key key,
    @required List<T> initialValues, // List of initial selected options

    @required List<T> options, // List of available options

    @required
        Widget Function(T)
            titleBuilder, // Widget builder for an option in the dropdown menu

    @required
        Widget Function(T)
            chipLabelBuilder,
            hint,
    this.decoration = const InputDecoration(),
    this.onChanged,
    FormFieldSetter<List> onSaved,
    FormFieldValidator<List> validator, bool isDense,
  })  : assert(options == null ||
            options.isEmpty ||
            initialValues == null ||
            initialValues.every((value) =>
                options.where((T option) {
                  return option == value;
                }).length ==
                1)),
        assert(decoration != null),
        super(
          key: key,
          onSaved: onSaved,
          initialValue: initialValues,
          validator: validator,
          builder: (FormFieldState<List> field) {
            final InputDecoration effectiveDecoration =
                decoration.applyDefaults(
              Theme.of(field.context).inputDecorationTheme,
            );
            return InputDecorator(
              decoration:
                  effectiveDecoration.copyWith(errorText: field.errorText),
              isEmpty: field.value.isEmpty,
              child: MyMultiSelectionField(
                values: field.value,
                options: options,
                titleBuilder: titleBuilder,
                chipLabelBuilder: chipLabelBuilder,
                hint: field.value.isNotEmpty ? hint : null,
                onChanged: field.didChange,
              ),
            );
          },
        );
  final ValueChanged<List> onChanged;
  final InputDecoration decoration;
  @override
  _MyMultiSelectionFormFieldState<T> createState() =>
      _MyMultiSelectionFormFieldState();
}

class _MyMultiSelectionFormFieldState<T> extends FormFieldState<List<T>> {
  @override
  MyMultiSelectionFormField<T> get widget => super.widget;
  @override
  void didChange(List values) {
    super.didChange(values);
    if (widget.onChanged != null) {
      widget.onChanged(values);
    }
  }
}*/
