import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Приветственный блок
          Text(
            'Добро пожаловать в Premium! 🎉',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Теперь у вас есть доступ ко всем возможностям приложения. '
                'Мы подготовили для вас эксклюзивный контент, персональные рекомендации '
                'и многое другое. Спасибо, что выбрали нас!',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 30),

          // Раздел "Что нового"
          _buildSectionTitle('Что нового'),
          const SizedBox(height: 12),
          _buildNewsCard(
            title: 'Обновление интерфейса',
            description:
            'Полностью переработали главный экран: теперь всё интуитивно и быстрее.',
          ),
          _buildNewsCard(
            title: 'Тёмная тема',
            description:
            'Добавили долгожданную тёмную тему — включается автоматически по расписанию.',
          ),
          _buildNewsCard(
            title: 'Эксклюзивные материалы',
            description:
            'Только для подписчиков: статьи экспертов, закрытые вебинары и гайды.',
          ),

          const SizedBox(height: 30),

          // Раздел "Полезные советы"
          _buildSectionTitle('Полезные советы'),
          const SizedBox(height: 12),
          _buildTipCard(
            icon: Icons.lightbulb_outline,
            text: 'Используйте поиск по ключевым словам, чтобы быстрее находить нужное.',
          ),
          _buildTipCard(
            icon: Icons.notifications_active_outlined,
            text: 'Включите уведомления, чтобы не пропускать новые публикации.',
          ),
          _buildTipCard(
            icon: Icons.bookmark_outline,
            text: 'Сохраняйте важные материалы в избранное для быстрого доступа.',
          ),

          const SizedBox(height: 30),

          // Цитата дня (просто для объёма)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.format_quote, color: Colors.blue),
                const SizedBox(height: 8),
                Text(
                  'Успех — это способность шагать от одной неудачи к другой, не теряя энтузиазма.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.blue.shade800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '— Уинстон Черчилль',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.blue.shade600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
          // Кнопка-заглушка для демонстрации
          Center(
            child: OutlinedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Это просто демонстрация контента')),
                );
              },
              icon: const Icon(Icons.thumb_up_alt_outlined),
              label: const Text('Нравится контент?'),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildNewsCard({required String title, required String description}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.article, color: Colors.blue),
        title: Text(title),
        subtitle: Text(description),
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }

  Widget _buildTipCard({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.orange.shade700, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}