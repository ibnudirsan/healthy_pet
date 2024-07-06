import 'package:flutter/material.dart';
import '../models/docter_model.dart';

class doctors_cad extends StatelessWidget {
  const doctors_cad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 11,
      ),
      itemCount: doctors.length,
    );
  }
}
