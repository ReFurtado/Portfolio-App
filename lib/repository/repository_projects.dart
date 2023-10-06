class Projects {
  late String image, name, description, english, mockup;

  Projects({
    required this.image,
    required this.name,
    required this.description,
    required this.english,
    required this.mockup,
  });
}

class ProjectRepository {
  static List<Projects> info = [
    Projects(
      image: 'assets/img/login_app.png', 
      name: 'Login App', 
      description: 'Projeto de um aplicativo utilizando o pacote GetX e a plataforma Firebase para autenticação de usuário com login, registro e logout.', 
      english: 'Design of an application using the GetX package and the Firebase platform for user authentication with login, registration and logout.',
      mockup: 'assets/gif/login.gif',
    ),
    Projects(
      image: 'assets/img/chat_app.png', 
      name: 'Chat App', 
      description: 'Este é um app de mensagens simples que permite aos usuários enviar e receber mensagens de texto.', 
      english: 'This is a simple messaging app that allows users to send and receive text messages.',
      mockup: 'assets/gif/chat.gif',
    ),
    Projects(
      image: 'assets/img/delivery_app.png', 
      name: 'Delivery App', 
      description: 'Projeto de um aplicativo de delivery com lista de produtos e páginas relacionadas a itens e produtos.', 
      english: 'Design of a delivery application with a list of products and pages related to items and products.',
      mockup: 'assets/gif/delivery.gif',
    ),
    Projects(
      image: 'assets/img/onboarding_app.png', 
      name: 'Onboarding App', 
      description: 'Projeto de um aplicativo bancário com tela inicial, onboarding e a tela principal.', 
      english: 'Design of a banking application with home screen, onboarding and main screen.',
      mockup: 'assets/gif/onboarding.gif',
    ),
  ];
}