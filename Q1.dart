class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  BankAccount({
    required this.accountNumber,
    required this.balance,
    required this.accountType,
    required this.interestRate,
  });

  void deposit(double amount) {
    balance += amount;
    print("Deposited \$$amount. New balance: \$$balance");
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds. Withdrawal not allowed.");
    } else {
      balance -= amount;
      print("Withdrew \$$amount. New balance: \$$balance");
    }
  }

  void addInterest() {
    double interestAmount = balance * (interestRate / 100);
    balance += interestAmount;
    print("Added interest. New balance: \$$balance");
  }

  void display() {
    print("Account Number: $accountNumber");
    print("Balance: \$$balance");
    print("Account Type: $accountType");
    print("Interest Rate: $interestRate%");
    print("");
  }
}

void main() {
  BankAccount account1 = BankAccount(
    accountNumber: 1,
    balance: 1000.0,
    accountType: "Savings",
    interestRate: 2.5,
  );

  BankAccount account2 = BankAccount(
    accountNumber: 2,
    balance: 5000.0,
    accountType: "Checking",
    interestRate: 1.8,
  );

  account1.deposit(500.0);
  account1.withdraw(200.0);
  account1.addInterest();
  account1.display();

  account2.deposit(1000.0);
  account2.withdraw(600.0);
  account2.addInterest();
  account2.display();
}
