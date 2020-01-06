# Utiliser Github Desktop

[Github Desktop](https://desktop.github.com/) est l'interface graphique d'utilisation du protocole [Git](https://fr.wikipedia.org/wiki/Git) pour [Github](https://github.com/). Nous allons l'utiliser pour [versionner](https://fr.wikipedia.org/wiki/Gestion_de_versions) notre code et le mettre en ligne.

## Préambule : quelques éléments de langage

Afin que l'on soit d'accord sur les termes :

**Un repo / repository** : Plus qu'un dossier dans lequel nous mettons notre code, c'est un dossier contenant les fichiers nécessaires pour tracker le code. On parle de dossier "Git enabled". Le repo distant est le repo en ligne (appelé aussi "Origin"), le repo local est le repo sur notre machine

**Un commit** : Étape d'ajout des fichiers modifiés/créés/supprimés à un packet qui sera après "pushé" en ligne. Un commit nécessite forcément un titre. Cette étape n'intervient que sur notre machine. 

**Push**: Étape finale de mise en ligne. Pusher du code revient à le mettre en ligne sur notre repo distant. 

**Pull** :  Action de récupérer du code distant sur notre machine. 

**Fetch** : Littéralement "aller chercher". Action d'aller vérifier si le repo en ligne contient du code que l'on a pas sur notre machine. Si oui, on pull pour récupérer. 

**Branch**: Permet de développer sur des versions parallèles du même code afin de ne pas altérer la version principale. La branche principale est appelé "Master", c'est celle qui contient le code final, destiné à être mis en ligne. 

**Clone** : L'action de cloner un repo est celle de copier un repo distant sur notre machine. Nous le faisons dans le cas où nous souhaitons collaborarer sur un repo existant.

**Changes** : Liste des fichiers qui ont subit des changements

**History** : Historique des commits, afin de pouvoir voir les changements effectués ou trouver un point de "rollback" 

**Rollback**: Retour vers une version antérieure 

## 1. Créer son compte sur Github et télécharger Github Desktop

Il faut bien diférencier les deux interfaces : Github le site servira à la gestion de projet là ou l'interface Desktop servira pour l'utilisation du protocole Git et donc, toute la partie liée au code en lui même. 

1. Créez votre compte sur https://github.com
2. Téléchargez l'application desktop sur https://desktop.github.com/
3. Installez le logiciel
4. Lancez-le
5. Connectez votre compte Github sur l'application.

## 2. Créer son premier repo

Le·la chef·fe de projet doit initialiser le dossier de son code en un repo Github : 

1. Une fois connecté·e, cliquez sur "Add a repository from your hardrive". 
2. Si vous n'en êtes pas à votre premier repo, clickez en haut à gauche dans la partie Repository et cliquez sur "Add > Add existing repository"
3. Sélectionnez le dossier dans votre ordinateur
4. Quand le message "This director does not appear to be a git repository...", clickez sur le lien "Create a repository"

Une fois sur l'interface de création d'un repo : 

1. Renseignez le nom de votre projet
2. Une description de votre projet 
3. Cochez la case "Initialize with a README" pour inclure le fichier README.md
4. Laissez les cases "Git Ignore" et "Licence" à None et validez. 

Félicitations, vous avez initialisé un repo sur votre machine. Maintenant, mettez le en ligne :

1. Vérifiez dans la partie "History" que tous les fichiers ont bien été ajoutés (si ce n'est pas le cas, refaite l'étape 2)
2. Clickez sur "Publish a repository"
3. Dans la fenêtre de dialogue, renseignez le nom, la description et si vous voulez le garder privé ou pas. 
4. Si vous avez un compte d'entreprise, vous pouvez associé ce repo à celui-ci
5. Validez en cliquant sur "Publish this repository"

Félicitations, votre code est en ligne ! Vous pouve le vérifier dans la partie "My repositories" sur https://github.com

## 3. Ajouter des collaborateurs·rices au projet

Car Github est avant tout un outil collaboratif, il vous faudra ajouter vos collaborateurs·rices au dossier.

1. Rendez-vous sur https://github.com dans la rubrique "My repositories"
2. Entrez dans votre dossier maintenant en ligne (si aucun dossier refaite l'étape 2)
3. Allez dans l'onglet "Settings"
4. Dans la partie "Collaborators", ajoutez par leurs pseudos Github vos collaborateurs·rices.
5. Votre collaborateur·rice reçoit un mail (checkez les spams) dans lequel il·elle devra valider l'invitation. 

Voilà, vous n'êtes plus seul·e ! 

## 4. Cloner le repo de quelqu'un pour collaborer dessus

Maintenant que votre dossier est en ligne et que vous avez vos collaborateurs·rices, ces personnes doivent cloner le repo. 

1. Clickez en haut à gauche dans la partie Repository et cliquez sur "Add > Clone Repository"
2. Maintenant que vous collaborez au dossier de votre camarade, vous devriez le voir apparaître dans l'onglet "Github.com -> Your repositories". Si ce n'est pas le cas, raffraichissez au moyen du bouton à droite du champ filter et revérifiez l'étape 3. 
3. Sélectionnez le dossier dans lequel vous souhaitez cloner le repo au moyen du champ "Local Path" (par défaut, il va dans user/documents/Github)
4. Validez en clickant sur "Clone"

Félicitations vous venez de cloner votre premier repo, celui-ci est désormais sur votre machine et vous allez donc pouvoir l'ouvrir pour effectuer des modifications dessus et les pusher.

## 5. Effectuer des modifications et les mettre en ligne

Vous venez de cloner le repo/vous êtes sur votre repo, vous aimeriez maintenant effectuer des modifications et les mettre en ligne. 

1. Ouvrez le repo dans votre éditeur de code (dans l'éditeur de code : file -> open folder)
2. Apportez les modifications que vous souhaitez au code, ajoutez/retirez des fichers... 
3. Une fois fini, en retournant dans l'application Github Desktop, vous devriez voir à gauche la list des fichiers changés et pour chaque fichiers, les élements qui ont changés avec en rouge l'ancien code, en vert le nouveau et en blanc, le code inchangé. 
4. Controllez que tout soit bon et procédez à un commit. 

Le commit est l'étape où vous enpacketez votre code pour lui permettre d'être mis en ligne. 

1. En bas à gauche, ajoutez un titre explicitant ce que vous venez de faire et en anglais comme "Finish footer", "Add photos to VP section", "Fix CSS on cards"... 
2. Validez en clickant sur "Commit to master". 
3. Le code est commité, il est donc prêt à être pushé. 
4. Cliquez sur "Push to Origin"

Voilà, votre modification est en ligne, vous devriez retrouver le commit dans "History". 

## 6. Récupérez les modifications de vos collaborateurs·rices

Du code a été push par un·e dev A, le·la dev B doit le récupérer

1. Clickez sur "Fetch Origin"
2. Si du code est disponible, le bouton changera pour la mention "Pull origin", clickez alors dessus
3. Une fois le chargement terminé, le code est disponible.
4. Vérifiez en regardant les fichiers de votre code et dans la partie "history"

Voilà, vous avez fini ! 

## 7. Workflow : bonnes pratiques

Pour une gestion de projet basique, le concept de push/pull suffit. Réitérez les étapes 5 et 6 pour partager du code. A force cela devient un automatisme. 

L'utilisation de Git pour des développeurs·euses après par l'utilisation de branches et de "pull requests". Vous pouvez trouver deux bon tutos à ce sujet : 

https://fr.atlassian.com/git/tutorials/comparing-workflows

https://makina-corpus.com/blog/metier/2014/un-workflow-git-efficace-pour-les-projets-a-moyen-long-terme