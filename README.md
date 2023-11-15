# evaluation-librairie

**README - Initialisation du Projet en Local**

Bienvenue dans le projet de l'application de gestion de librairie. Suivez ces étapes pour initialiser l'application sur votre machine locale.

---

### Initialisation du Projet en Local

1. **Cloner le Dépôt :**
   - Utilisez la commande suivante pour cloner le dépôt :
     ```bash
     git clone https://github.com/votre-utilisateur/nom-du-depot.git
     ```

2. **Installer les Dépendances :**
   - Accédez au dossier backend et installez les dépendances :
     ```bash
     cd nom-du-depot/backend
     composer install
     ```

3. **Configuration de la Base de Données :**
   - Consultez le fichier [database/access.md](./database/access.md) pour les informations d'accès à la base de données.
   - Exécutez les scripts SQL du dossier [database](./database) pour créer les tables nécessaires.

4. **Configuration du Backend :**
   - Configurez les paramètres de la base de données dans le fichier `config.php`.

5. **Lancer l'Application :**
   - Démarrez le serveur PHP intégré :
     ```bash
     cd nom-du-depot/backend
     php -S localhost:8000
     ```

6. **Accéder à l'Application :**
   - Ouvrez votre navigateur et allez à [http://localhost:8000](http://localhost:8000).
   - Connectez-vous en utilisant les identifiants d'exemple fournis dans la présentation.

---

### Remarques

- Assurez-vous d'avoir PHP installé sur votre machine.
- Pour toute question ou problème, contactez l'équipe de développement à [contact@nom-de-lapplication.com](mailto:contact@nom-de-lapplication.com).

Profitez de votre utilisation de l'application de gestion de librairie en local ! 🚀
