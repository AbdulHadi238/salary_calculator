import 'package:flutter/material.dart';

class SalaryTaxCalculator extends StatefulWidget {
  const SalaryTaxCalculator({super.key});

  @override
  _SalaryTaxCalculatorState createState() => _SalaryTaxCalculatorState();
}

class _SalaryTaxCalculatorState extends State<SalaryTaxCalculator> {
  TextEditingController salaryController = TextEditingController();
  TextEditingController taxController = TextEditingController();
  double netSalary = 0.0;

  void _calculateNetSalary() {
    double salary = double.tryParse(salaryController.text) ?? 0.0;
    double taxPercentage = double.tryParse(taxController.text) ?? 0.0;

    setState(() {
      netSalary = salary - (salary * (taxPercentage / 100));
    });
  }

  void _clearFields() {
    salaryController.clear();
    taxController.clear();
    setState(() {
      netSalary = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salary Tax Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Salary',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: taxController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Tax Percentage',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateNetSalary,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text('Calculate',
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 16.0),
            Text('Net Salary: $netSalary',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _clearFields,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Clear Fields',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}



















// class SalaryTaxCalculator extends StatefulWidget {
//   const SalaryTaxCalculator({super.key});

//   @override
//   _SalaryTaxCalculatorState createState() => _SalaryTaxCalculatorState();
// }

// class _SalaryTaxCalculatorState extends State<SalaryTaxCalculator> {
//   TextEditingController salaryController = TextEditingController();
//   TextEditingController taxController = TextEditingController();
//   double netSalary = 0.0;

//   void _calculateNetSalary() {
//     double salary = double.tryParse(salaryController.text) ?? 0.0;
//     double taxPercentage = double.tryParse(taxController.text) ?? 0.0;

//     setState(() {
//       netSalary = salary - (salary * (taxPercentage / 100));
//     });
//   }

//   void _clearFields() {
//     salaryController.clear();
//     taxController.clear();
//     setState(() {
//       netSalary = 0.0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Salary Tax Calculator'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: salaryController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: 'Enter Salary'),
//             ),
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: taxController,
//               keyboardType: TextInputType.number,
//               decoration:
//                   const InputDecoration(labelText: 'Enter Tax Percentage'),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _calculateNetSalary,
//               child: const Text('Calculate'),
//             ),
//             const SizedBox(height: 16.0),
//             Text(
//               'Net Salary: $netSalary',
//               style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _clearFields,
//               child: const Text('Clear Fields'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Salary Calculator",
//           style: TextStyle(
//             fontSize: 35,
//             fontWeight: FontWeight.w500,
//             color: Color.fromARGB(255, 241, 222, 164),
//           ),
//         ),
//         backgroundColor: const Color.fromARGB(255, 161, 126, 221),
//       ),
      
//     );
//   }
// }
