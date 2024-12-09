```markdown
# Documentação Funcional - Expense Tracker

## 1. Visão Geral do Aplicativo

O Expense Tracker é um aplicativo móvel desenvolvido em Flutter para gerenciamento de despesas pessoais. Permite aos usuários registrar, visualizar e analisar seus gastos de forma simples e intuitiva.

## 2. Arquitetura do Aplicativo

O aplicativo segue uma arquitetura modular com as seguintes camadas principais:

- **Modelos**: Define a estrutura de dados
- **Serviços**: Gerencia lógica de negócios e operações de dados
- **Telas**: Compõe a interface do usuário

### 2.1 Estrutura de Diretórios

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

## 3. Funcionalidades Principais

### 3.1 Autenticação de Usuário

#### Login
- Tela de login com campos para email e senha
- Validação básica de campos
- Navegação para tela principal após login

#### Registro
- Tela de cadastro com campos para email e senha
- Opção de criar nova conta
- Navegação para tela principal após registro

### 3.2 Gerenciamento de Despesas

#### Adicionar Despesa
- Formulário para registro de nova despesa
- Campos:
  - Título
  - Valor
  - Categoria (Alimentação, Transporte, Lazer, Outros)
  - Notas adicionais (opcional)
- Validação de campos obrigatórios
- Geração automática de ID para cada despesa

#### Lista de Despesas
- Exibição de todas as despesas cadastradas
- Opções de filtragem por categoria
- Botão para exclusão de despesa

#### Dashboard
- Resumo de gastos mensais
- Gráfico de despesas por categoria
- Total de gastos no mês atual

## 4. Modelo de Dados

### 4.1 Despesa (Expense)
```dart
class Expense {
  String id;           // Identificador único
  String title;        // Título da despesa
  double amount;       // Valor da despesa
  DateTime date;       // Data do registro
  String category;     // Categoria da despesa
  String? notes;       // Notas adicionais
}
```

## 5. Serviços

### 5.1 Serviço de Despesas (ExpenseService)
- Métodos para gerenciamento de despesas
  - `getAllExpenses()`: Recupera todas as despesas
  - `addExpense()`: Adiciona nova despesa
  - `updateExpense()`: Atualiza despesa existente
  - `deleteExpense()`: Remove despesa
  - `filterExpensesByCategory()`: Filtra despesas por categoria
  - `getTotalMonthlyExpenses()`: Calcula total de gastos no mês
  - `getCategoryTotals()`: Agrupa despesas por categoria

### 5.2 Serviço de Autenticação (AuthService)
- Métodos de autenticação básicos
  - `register()`: Cadastro de novo usuário
  - `login()`: Autenticação de usuário
  - `logout()`: Encerramento de sessão

## 6. Interface do Usuário

### 6.1 Estilo
- Tema baseado no Material Design
- Paleta de cores azul
- Fontes padrão do Material
- Botões com estilo personalizado

## 7. Limitações Atuais

- Autenticação totalmente local (sem backend)
- Armazenamento de dados em memória
- Sem persistência entre sessões

## 8. Possíveis Melhorias Futuras

- Integração com backend para autenticação
- Persistência de dados (banco de dados local)
- Gráficos mais detalhados
- Exportação de relatórios
- Notificações de gastos
- Sincronização em nuvem

## 9. Requisitos do Sistema

- Flutter SDK
- Dart
- Dispositivos Android/iOS

## 10. Instalação e Configuração

1. Clone o repositório
2. Execute `flutter pub get`
3. Rode o aplicativo com `flutter run`

## 11. Considerações Finais

O Expense Tracker é um aplicativo simples e funcional para controle de despesas pessoais, com potencial para expansões e melhorias futuras.
```
