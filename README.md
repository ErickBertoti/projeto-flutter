# Expense Tracker

## Visão Geral

Expense Tracker é um aplicativo móvel desenvolvido em Flutter para gerenciamento de despesas pessoais. Permite aos usuários registrar, visualizar e analisar seus gastos de forma simples e intuitiva.

## Funcionalidades

- Autenticação de Usuário
  - Login e registro
  - Autenticação básica por email/senha
- Gerenciamento de Despesas
  - Adicionar, listar e excluir despesas
  - Categorização de despesas
  - Painel de gastos mensais
- Visualização de Despesas
  - Distribuição de gastos por categoria
  - Resumo de gastos mensais

## Estrutura do Projeto 📂

```
lib/
├── main.dart
├── models/
│   └── expense.dart
├── screens/
│   ├── home_screen.dart
│   ├── add_expense_screen.dart
│   ├── expense_list_screen.dart
│   ├── dashboard_screen.dart
│   ├── login_screen.dart
│   └── register_screen.dart
└── services/
    ├── expense_service.dart
    └── auth_service.dart
```

## Modelo de Dados

```dart
class Expense {
  String id;           // Identificador único
  String title;        // Título da despesa
  double amount;       // Valor da despesa
  DateTime date;       // Data de registro
  String category;     // Categoria da despesa
  String? notes;       // Notas adicionais
}
```

## Limitações Atuais

- Autenticação local
- Armazenamento de dados em memória
- Sem persistência entre sessões

## Requisitos do Sistema 💻

- Flutter SDK: [https://docs.flutter.dev/get-started/install
](url)
- Dart: [https://dart.dev/get-dart](url)

## Instalação

1. Clone o repositório
2. Acesse o diretório do projeto
`cd projeto-flutter`
3. Execute `flutter pub get`
4. Inicie o aplicativo com `flutter run`
