import 'package:expense_tracker/models/expense.dart';

class ExpenseService {
  static List<Expense> _expenses = [];

  static List<Expense> getAllExpenses() {
    return _expenses;
  }

  static void addExpense(Expense expense) {
    _expenses.add(expense);
  }

  static void updateExpense(Expense updatedExpense) {
    final index = _expenses.indexWhere((expense) => expense.id == updatedExpense.id);
    if (index != -1) {
      _expenses[index] = updatedExpense;
    }
  }

  static void deleteExpense(String id) {
    _expenses.removeWhere((expense) => expense.id == id);
  }

  static List<Expense> filterExpensesByCategory(String category) {
    return _expenses.where((expense) => expense.category == category).toList();
  }

  static List<Expense> sortExpensesByDate() {
    return List.from(_expenses)..sort((a, b) => b.date.compareTo(a.date));
  }

  static double getTotalMonthlyExpenses() {
    final now = DateTime.now();
    return _expenses
        .where((expense) => expense.date.month == now.month && expense.date.year == now.year)
        .fold(0.0, (sum, expense) => sum + expense.amount);
  }

  static Map<String, double> getCategoryTotals() {
    final Map<String, double> categoryTotals = {};
    for (var expense in _expenses) {
      categoryTotals[expense.category] = 
        (categoryTotals[expense.category] ?? 0) + expense.amount;
    }
    return categoryTotals;
  }
}