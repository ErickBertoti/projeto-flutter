import 'package:flutter/material.dart';
import '../services/expense_service.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final monthlyTotal = ExpenseService.getTotalMonthlyExpenses();
    final categoryTotals = ExpenseService.getCategoryTotals();

    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Total Gasto no Mês',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'R\$ ${monthlyTotal.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 24, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Despesas por Categoria',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categoryTotals.keys.length,
                itemBuilder: (context, index) {
                  final category = categoryTotals.keys.toList()[index];
                  final total = categoryTotals[category]!;
                  return ListTile(
                    title: Text(category),
                    trailing: Text('R\$ ${total.toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}