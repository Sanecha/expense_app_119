import 'package:ex_119/ui_pages/bloc/expense_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/local/db_helper.dart';
import 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  DBHelper dbHelper;

  ExpenseBloc({required this.dbHelper}) : super(ExpenseInitialState()) {
    on<AddExpenseEvent>((event, emit) async{
      emit(ExpenseLoadingState());


      bool check = await dbHelper.addExpense(event.newExpense);

      if(check){
        var mData = await dbHelper.getAllExpenses();
        emit(ExpenseLoadedState(mExp: mData));
      } else {
        emit(ExpenseErrorState(errorMsg: "Error: Expense not added!!"));
      }

    });

    on<GetInitialExpenseEvent>((event, emit) async{
      emit(ExpenseLoadingState());
      var mData = await dbHelper.getAllExpenses();
      emit(ExpenseLoadedState(mExp: mData));
    });
  }

  void ad(AddExpenseEvent addExpenseEvent) {}
}