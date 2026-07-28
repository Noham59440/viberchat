import 'package:flutter/material.dart';

// ÉCRAN DES RÉGLAGES COMPLET ET AVANCÉ
class SettingsScreen extends StatelessWidget {
  final Function(Color) onColorChanged;

  const SettingsScreen({super.key, required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Réglages & Paramètres'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // SECTION COMPTE
          const Text(
            "Mon compte",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(height: 10),
          const ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Nom du profil"),
            subtitle: Text("Utilisateur·rice"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.alternate_email),
            title: Text("Nom d'utilisateur"),
            subtitle: Text("viber_user"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.cake_outlined),
            title: Text("Date de naissance"),
            subtitle: Text("01/01/2000"),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),

          // SECTION APPARENCE
          const Text(
            "Apparence de l'application",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.teal),
            title: const Text("Vert / Teal (Origine)"),
            onTap: () => onColorChanged(Colors.teal),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.blue),
            title: const Text("Bleu électrique"),
            onTap: () => onColorChanged(Colors.blue),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.pink),
            title: const Text("Rose éclatant"),
            onTap: () => onColorChanged(Colors.pink),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.amber),
            title: const Text("Jaune / Ambre"),
            onTap: () => onColorChanged(Colors.amber),
          ),
          const Divider(),

          // SECTION CONFIDENTIALITÉ ET SÉCURITÉ
          const Text(
            "Confidentialité et Sécurité",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(height: 10),
          const ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text("Notifications"),
            subtitle: Text("Sons, vibrations, alertes"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text("Confidentialité des messages"),
            subtitle: Text("Chiffrement et messages éphémères"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.visibility_off_outlined),
            title: Text("Gestion de la localisation"),
            subtitle: Text("Mode fantôme activé"),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),

          // SECTION CONTRÔLE PARENTAL AVANCÉ
          const Text(
            "Supervision",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings, color: Colors.tealAccent),
            title: const Text("Centre parental"),
            subtitle: const Text("Gestion avancée, temps d'écran et filtres"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ParentalControlScreen()),
              );
            },
          ),
          const Divider(),

          // SECTION SYSTÈME ET AIDE
          const ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Centre d'aide & Support"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("À propos de l'application"),
            subtitle: Text("Version 1.0.0 - Stable"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

// SOUS-ÉCRAN DU CONTRÔLE PARENTAL DE LA MORT
class ParentalControlScreen extends StatelessWidget {
  const ParentalControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Centre parental avancé'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            "Tableau de bord de sécurité",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Gérez ici les restrictions, le temps d'utilisation et la sécurité globale de l'application.",
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
          const SizedBox(height: 20),
          
          Card(
            color: const Color(0xFF1E293B),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Temps d'écran aujourd'hui", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(height: 😎,
                  LinearProgressIndicator(value: 0.65, color: Colors.tealAccent),
                  SizedBox(height: 😎,
                  Text("1h 30m / 2h de limite quotidienne", style: TextStyle(color: Colors.white60, fontSize: 12)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          const ListTile(
            leading: Icon(Icons.security),
            title: Text("Filtrage des contenus sensibles"),
            subtitle: Text("Bloquer automatiquement les posts non appropriés"),
            trailing: Switch(value: true, onChanged: null),
          ),
          const ListTile(
            leading: Icon(Icons.timer),
            title: Text("Verrouillage horaire automatique"),
            subtitle: Text("Bloque l'app entre 22h et 7h"),
            trailing: Switch(value: true, onChanged: null),
          ),
          const ListTile(
            leading: Icon(Icons.block),
            title: Text("Contacts bloqués et restreints"),
            subtitle: Text("0 contact bloqué actuellement"),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.key),
            title: Text("Modifier le code PIN parental"),
            subtitle: Text("Sécuriser l'accès aux réglages"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
