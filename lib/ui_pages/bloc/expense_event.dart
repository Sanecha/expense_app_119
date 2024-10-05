import '../../data/model/expense_model.dart';

sealed class ExpenseEvent {}

class AddExpenseEvent extends ExpenseEvent{
  ExpenseModel newExpense;
  AddExpenseEvent({required this.newExpense});
}

class GetInitialExpenseEvent extends ExpenseEvent{}