import 'package:chess_timer/utils/db/db.dart';
import 'package:chess_timer/utils/db/seed/templates.dart';
import 'package:chess_timer/widgets/input/time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddTemplatePage extends StatefulWidget {
  const AddTemplatePage({super.key});

  @override
  State<AddTemplatePage> createState() => _AddTemplatePageState();
}

class _AddTemplatePageState extends State<AddTemplatePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit() async {
    _formKey.currentState!.save();
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final navigator = Navigator.of(context);
    final value = _formKey.currentState!.value;
    final template = TimeTemplate(
        blackDuration: value["black_duration"],
        whiteDuration: value["white_duration"],
        title: value["title"],
        increment: value["increment"]);
    final templatesBox = Hive.box<TimeTemplate>(dbTemplatesKey);
    await templatesBox.add(template);
    navigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("common.add_new_template").tr()),
      body: SafeArea(
        child: CupertinoTheme(
          data: const CupertinoThemeData(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FormBuilder(
              key: _formKey,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: FormBuilderTextField(
                      name: "title",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: "form.title_required".tr(),
                        ),
                        FormBuilderValidators.minLength(
                          2,
                          errorText: "form.title_min2".tr(),
                        ),
                        FormBuilderValidators.maxLength(
                          25,
                          errorText: "form.title_max25".tr(),
                        ),
                      ]),
                      decoration: InputDecoration(
                        labelText: "form.title".tr(),
                        isDense: true,
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  FormBuilderField(
                      name: "white_duration",
                      initialValue: 0,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "form.duration_required".tr()),
                        FormBuilderValidators.min(1,
                            errorText: "form.duration_min1".tr())
                      ]),
                      builder: (field) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "chess.white",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).tr(),
                                Expanded(
                                  child: TimePicker(
                                    errorText: field.errorText,
                                    onConfirm: (duration) {
                                      field.didChange(duration);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                  FormBuilderField(
                      name: "black_duration",
                      initialValue: 0,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "form.duration_required".tr()),
                        FormBuilderValidators.min(1,
                            errorText: "form.duration_min1".tr())
                      ]),
                      builder: (field) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "chess.black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).tr(),
                                Expanded(
                                  child: TimePicker(
                                      errorText: field.errorText,
                                      onConfirm: (duration) {
                                        field.didChange(duration);
                                      }),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                  FormBuilderField(
                      name: "increment",
                      initialValue: 0,
                      builder: (field) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "chess.increment",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).tr(),
                                Expanded(
                                  child: TimePicker(
                                      disableHour: true,
                                      errorText: field.errorText,
                                      onConfirm: (duration) {
                                        field.didChange(duration);
                                      }),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                  Center(
                    child: ElevatedButton(
                      onPressed: onSubmit,
                      child: Text(
                        "common.submit".tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
