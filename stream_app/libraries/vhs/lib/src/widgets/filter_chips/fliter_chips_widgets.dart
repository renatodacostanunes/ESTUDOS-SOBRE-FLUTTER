import 'package:flutter/material.dart';
import 'package:vhs/src/widgets/filter_chips/fliter_chips_controller.dart';

class FilterChipsWidget extends StatefulWidget {
  final List<String> filters;
  final void Function(List<String> selectedValues) onChange;

  const FilterChipsWidget({
    super.key,
    required this.filters,
    required this.onChange,
  });

  @override
  State<FilterChipsWidget> createState() => _FilterChipsWidgetState();
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {
  late List<String> _filter = [];

  final controller = FilterChipsController();

  @override
  void initState() {
    super.initState();
    _filter = [FilterChipsController.all, ...widget.filters];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ValueListenableBuilder<List<String>>(
          valueListenable: controller,
          builder: (context, value, child) {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _filter.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: VhsSelectableChip(
                  selectedColor: const Color(0xff69ff9b),
                  backgroundColor: const Color(0xff2a2939),
                  selected: value.contains(_filter[index]),
                  label: _filter[index],
                  onSelected: (value) {
                    controller.add(value);
                    widget.onChange(controller.value);
                  },
                ),
              ),
            );
          }),
    );
  }
}

class VhsSelectableChip extends StatelessWidget {
  final Color selectedColor;
  final Color backgroundColor;
  final bool selected;
  final String label;
  final void Function(String value) onSelected;

  const VhsSelectableChip({
    super.key,
    required this.selectedColor,
    required this.backgroundColor,
    required this.selected,
    required this.label,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: selected ? selectedColor : backgroundColor,
        borderRadius: BorderRadius.circular(100.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(100.0),
          onTap: () => onSelected(label),
          child: Container(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 14.0,
              top: 6.0,
              bottom: 6.0,
            ),
            decoration: BoxDecoration(
              color: selected ? selectedColor : backgroundColor,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
              children: [
                if (selected)
                  const Icon(
                    Icons.check,
                    size: 16.0,
                  ),
                Text(
                  label,
                  style: TextStyle(
                    color: selected ? backgroundColor : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
