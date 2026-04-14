# 📱 3SIS CPD Sem 1 - Desenvolvimento Cross-Platform

> Repositório criado como portfólio e apostila de estudos práticos para a disciplina de Desenvolvimento Cross-Platform. Os projetos e laboratórios aqui presentes exploram o ecossistema **Flutter** e a linguagem **Dart**.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

## 🎯 Objetivo do Repositório
Este espaço serve como um registro vivo do meu aprendizado na criação de aplicativos móveis multiplataforma. O repositório é composto por projetos de maior complexidade arquitetural e pequenos laboratórios focados em dominar os fundamentos de UI/UX, gerenciamento de estado e lógica de programação.

---

## ⭐ Projetos em Destaque

### 🔐 [IronKey](./ironkey)
Um gerador de senhas seguras personalizáveis e interativo. Este é um dos projetos mais completos do repositório, focado na separação de responsabilidades e regras de negócio.
* **Arquitetura & OOP:** Utilização de abstrações e interfaces para os geradores de senha (`StandardPasswordGenerator` e `PinPasswordGenerator`).
* **Gerenciamento de Estado:** Telas reativas baseadas em `StatefulWidget` com controle de formulários (`TextEditingController`).
* **UI/UX:** Suporte a Light/Dark theme automáticos (`AppTheme`), botões de cópia para a área de transferência (`Clipboard`), feedback visual com `ScaffoldMessenger` (SnackBars) e Material Design 3.
* **Lógica:** Implementação de `Enums` (`PasswordTypeEnum`) para o controle seguro do tipo de senha selecionado pelo usuário.

---

## 📚 Laboratórios e Exercícios Práticos

Além dos destaques acima, as demais pastas deste repositório (como jogos interativos e simuladores) contêm aplicações focadas em fixar conceitos essenciais do Flutter. Sinta-se à vontade para explorar os diretórios! 

Nesses módulos, você encontrará implementações de:
- **Componentização:** Criação de *Stateless* e *Stateful Widgets* reutilizáveis.
- **Estruturação de Layout:** Domínio sobre `Row`, `Column`, `Expanded`, `Stack` e `SafeArea`.
- **Interatividade:** Captura de eventos do usuário via `GestureDetector`, botões e switches.
- **Manipulação de Mídia:** Exibição de assets locais (imagens) e formatação dinâmica.

---

## 🚀 Como executar os projetos localmente

Para rodar qualquer um dos aplicativos na sua máquina, certifique-se de ter o [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.

1. Clone o repositório:
   ```bash
   git clone [https://github.com/HpBtw/3SIS-CPD_Sem1.git](https://github.com/HpBtw/3SIS-CPD_Sem1.git)
