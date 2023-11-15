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
   - Exécutez les scripts SQL du dossier evaluation-librairie/if0_35208375_library.sql pour créer les tables nécessaires.

3. **Configuration du Backend :**
   - Configurez les paramètres de la base de données dans le fichier `config.php`.

4. **Lancer l'Application :**
   - Démarrez le serveur PHP intégré :
     ```bash
     cd nom-du-depot
     php -S localhost:8000
     ```

5. **Accéder à l'Application :**
   - Ouvrez votre navigateur et allez à [http://localhost:8000](http://localhost:8000).
   - Connectez-vous en utilisant les identifiants d'exemple fournis dans la présentation.

---

### Remarques

# Déploiement de l'Application sur InfinityFree

Suivez ces étapes pour déployer votre application PHP sur InfinityFree, un service d'hébergement gratuit. Ces instructions supposent que vous avez déjà un compte sur InfinityFree.

## Étape 1 : Préparation des Fichiers

Assurez-vous que tous vos fichiers de l'application sont prêts, y compris les fichiers PHP, CSS, JS, et autres. Assurez-vous également que votre fichier de configuration (par exemple, `config.php`) est correctement configuré pour l'environnement de production.

## Étape 2 : Création d'un Compte sur InfinityFree

1. Rendez-vous sur [InfinityFree](https://infinityfree.com/).
2. Créez un compte gratuit si vous n'en avez pas déjà un.
3. Connectez-vous à votre tableau de bord.

## Étape 3 : Configuration de la Base de Données

1. Dans le tableau de bord InfinityFree, trouvez la section "MySQL Databases".
2. Créez une nouvelle base de données et notez les détails de connexion (nom de la base de données, nom d'utilisateur, mot de passe).

## Étape 4 : Importation de la Base de Données

1. Utilisez un outil comme phpMyAdmin pour importer votre base de données sur le serveur MySQL d'InfinityFree.
2. Assurez-vous que la structure et les données sont correctes.

## Étape 5 : Téléchargement des Fichiers sur le Serveur

1. Utilisez un client FTP (comme FileZilla) pour télécharger vos fichiers sur le serveur InfinityFree.
2. Téléchargez-les dans le répertoire `htdocs` ou `public_html` sur le serveur, selon la configuration spécifique d'InfinityFree.

## Étape 6 : Configuration du Fichier .htaccess

Si votre application utilise le fichier `.htaccess`, assurez-vous qu'il est correctement configuré pour l'environnement d'InfinityFree.

## Étape 7 : Test

1. Ouvrez votre navigateur et accédez à votre domaine sur InfinityFree.
2. Vérifiez que votre application fonctionne correctement.

Ces étapes devraient vous aider à déployer votre application PHP sur InfinityFree. Assurez-vous de consulter la documentation spécifique d'InfinityFree pour plus d'informations.

- Assurez-vous d'avoir PHP installé sur votre machine.
- Pour toute question ou problème, contactez l'équipe de développement à [contact@nom-de-lapplication.com](mailto:contact@nom-de-lapplication.com).

Profitez de votre utilisation de l'application de gestion de librairie en local ! 🚀
