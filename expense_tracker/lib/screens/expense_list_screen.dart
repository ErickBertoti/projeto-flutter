import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../services/expense_service.dart';

class ExpenseListScreen extends StatefulWidget {
  @override
  _ExpenseListScreenState createState() => _ExpenseListScreenState();
}

class _ExpenseListScreenState extends State<ExpenseListScreen> {
  List<Expense> _expenses = [];
  String _selectedCategory = 'Todos';

  @override
  void initState() {
    super.initState();
    _loadExpenses();
  }

  void _loadExpenses() {
    setState(() {
      _expenses = _selectedCategory == 'Todos'
          ? ExpenseService.getAllExpenses()
          : ExpenseService.filterExpensesByCategory(_selectedCategory);
    });
  }

  void _deleteExpense(String id) {
    setState(() {
      ExpenseService.deleteExpense(id);
      _loadExpenses();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Despesas'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _selectedCategory = value;
                _loadExpenses();
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'Todos', child: Text('Todos')),
              PopupMenuItem(value: 'Alimentação', child: Text('Alimentação')),
              PopupMenuItem(value: 'Transporte', child: Text('Transporte')),
              PopupMenuItem(value: 'Lazer', child: Text('Lazer')),
              PopupMenuItem(value: 'Outros', child: Text('Outros')),
            ],
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
      body: _expenses.isEmpty
          ? Center(child: Text('Nenhuma despesa cadastrada'))
          : ListView.builder(
              itemCount: _expenses.length,
              itemBuilder: (context, index) {
                final expense = _expenses[index];
                return ListTile(
                  title: Text(expense.title),
                  subtitle: Text(
                    'R\$ ${expense.amount.toStringAsFixed(2)} - ${expense.category}',
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _deleteExpense(expense.id),
                  ),
                );
              },
            ),
    );
  }
}