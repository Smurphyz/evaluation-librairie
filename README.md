# evaluation-librairie

**README - Initialisation du Projet en Local**

Bienvenue dans le projet de l'application de gestion de librairie. Suivez ces étapes pour initialiser l'application sur votre machine locale.

---

### Initialisation du Projet en Local

1. **Cloner le Dépôt :**
   - Utilisez la commande suivante pour cloner le dépôt :
     ```bash
     git clone https://github.com/Smurphyz/evaluation-librairie.git
     ```

2. **Configuration de la Base de Données :**
   - Consultez le fichier [database/access.md](./database/access.md) pour les informations d'accès à la base de données.
   - Exécutez les scripts SQL du dossier evaluation-librairie/if0_35208375_library.sql pour créer les tables nécessaires.

3. **Configuration du Backend :**
   - Configurez les paramètres de la base de données dans le fichier `config.php`.

4. **Lancer l'Application :**
   - Démarrez le serveur PHP intégré :
     ```bash
     cd nom-du-depot/backend
     php -S localhost:8000
     ```

5. **Accéder à l'Application :**
   - Ouvrez votre navigateur et allez à [http://localhost:8000](http://localhost:8000).
   - Connectez-vous en utilisant les identifiants d'exemple fournis dans la présentation.

---

### Remarques

- Assurez-vous d'avoir PHP installé sur votre machine.
- Pour toute question ou problème, contactez l'équipe de développement à [contact@nom-de-lapplication.com](mailto:contact@nom-de-lapplication.com).

Profitez de votre utilisation de l'application de gestion de librairie en local ! 🚀
