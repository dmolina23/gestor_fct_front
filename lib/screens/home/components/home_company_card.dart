import 'package:flutter/material.dart';
import 'package:gestor_fct/screens/companyDetail/company_detail.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({Key? key, required this.name, required this.address, required this.id}) : super(key: key);

  final String name;
  final String address;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFFF5F5F5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://picsum.photos/seed/845/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 40, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Text(
                    address,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompanyDetail(
                                    id: id)));
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: const Color(0xFF228F22),
                          shape: const StadiumBorder()),
                      child: const Text("Ver detalles"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
