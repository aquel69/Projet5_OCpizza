# PROJET 5 - Concevez la solution technique d’un système de gestion de pizzeria 
____  


## Diagramme de Classe

1. La première étape consiste à mettre en forme les classes et les attributs. A l'aide d'éclipse, je développe un système cohérent pour la gestion du groupe "OC Pizza" que je code à l'aide du langage JAVA.  
  &nbsp;
2. Sur éclipse je télécharge et installe le plug-in "ObectAid" qui va me servir à générer un diagramme de classe à partir de mon projet :  
	- Etape 1 :  
	dans le menu éclipse, je vais dans l'onglet 'Help' et sélectionne 'Install New Software'  
  &nbsp;
	![photo install new Software](https://www.objectaid.com/assets/images/install/help-install-new-software.png "photo étape 1")  
  &nbsp;
	- Etape 2 :  
	je clique sur le bouton 'add'  
	![photo Available Software](https://www.objectaid.com/assets/images/install/wizard-install-available-software.png "photo étape 2")  
	- Etape 3 :  
	je copie les informations suivante et appuye sur 'ok'  
	Name: ObjectAidUML Explorer  
	URL: http://www.objectaid.com/update/current  
	![photo Add Repository](https://www.objectaid.com/assets/images/install/dialog-add-repository.png "photo étape 3")  
	- Etape 4 :  
	je selectionne ce que je veux installer et appuye sur le bouton 'next', puis j'attends que le programme s'installe.
  &nbsp;  
	![photo selection programme](https://www.objectaid.com/assets/images/install/wizard-install-objectaid.png "photo étape 4")
  &nbsp;
  &nbsp;
	- Etape 5 :  
	j'accepte la license et appuyez sur 'finish'.  
  &nbsp;
	![photo license](https://www.objectaid.com/assets/images/install/wizard-install-license.png "photo étape 5")  
  &nbsp;
	- Etape 6 :  
	un message d'erreur s'affiche 'Security Warning', je presse 'OK'. Le plug-in est installé et prêt à fonctionner.  
  &nbsp;
3. Dans l'onglet 'File', je fais 'New', puis 'Other'. Je cherche le dossier "ObjectAid UML Diagram", puis sur 'ObjectAid Class Diagram' et je fais 'NEXT. 
Je donne un nom à mon Diagramme et je fais 'FINISH'. 
  &nbsp;
4. Une fois dans le fichier du diagramme, je déplace les classes que je souhaite mettre dans celui-ci. Le diagramme est créé.
  &nbsp;

5. Je créé sur le logiciel "Visio" un diagramme à partir de celui généré sur Eclipse. Celui-ci est plus complet et plus présentable.  
	&nbsp;  
![DiagrammeDeClasse](https://user-images.githubusercontent.com/45402044/74421230-9acb9f80-4e44-11ea-986b-b5dd045d60fb.png)
	&nbsp;  


## Modèle Physique de Données

1. La première étape consiste à partir du diagramme de classe que l 'on vient de finir, d'élaborer le modèle physique de données sommairement à l'aide du logiciel "Power Architect".  
	 &nbsp;
2. J'ajoute ensuite les différentes clés primaires et étrangères de chaque table.  
	&nbsp;
3. J'obtiens le résultat suivant :  
![MPD](https://user-images.githubusercontent.com/45402044/74421305-b8006e00-4e44-11ea-90a4-ead14bc93b2f.png)
	&nbsp;  


## Création de la Base de Données
1. Dans "Power Architect", je génère la base de données à partir de mon modèle physique de données, en cliquant sur l'icone SQL situé en dessous du menu 'enterprise'.  
	 &nbsp;  
![créationBaseDeDonnées1](https://user-images.githubusercontent.com/45402044/71312071-e05c8500-241e-11ea-9cd2-5023b9e2a843.png)  
	 &nbsp;  
2. Ensuite je copie le code crée en SQL, à l'aide du bouton "Copy".  
	&nbsp;  
![créationBaseDeDonnées2](https://user-images.githubusercontent.com/45402044/71312081-f66a4580-241e-11ea-8c24-b6d8b189892e.png)  
	&nbsp;  
3. Je me connecte dans "pgAdmin4" et je crée une nouvelle base de données.
	&nbsp;  
![créationBaseDeDonnées3](https://user-images.githubusercontent.com/45402044/71312092-139f1400-241f-11ea-8768-1e6afa7da3c1.png)  
	&nbsp;  
4. Je rentre le nom de ma base de données, je l'enregistre, et ma base de données apparait dans le navigateur.  
	&nbsp;  
![créationBaseDeDonnées4](https://user-images.githubusercontent.com/45402044/71312096-23b6f380-241f-11ea-9750-d0d723fcc529.png)  
	&nbsp;  
5. Je clique sur l'icone éclair(1), la partie 'Editeur de requêtes' s'affiche. Je colle le code crée en SQL sur "Power Architect" dans cette partie et valide à l'aide de l'icone éclaire(2). Les tables du groupe "OC Pizza" sont maintenant dans la base données.
	&nbsp;  
![créationBaseDeDonnées5](https://user-images.githubusercontent.com/45402044/71312107-37faf080-241f-11ea-8cb4-7f3734d1d59e.png)  
  	&nbsp;  
 6. J'ai également installé le plug-in DTP pour éclipse, me permettant d'avoir accés au base de données via le logiciel.   
	&nbsp;  
![créationBaseDeDonnées6](https://user-images.githubusercontent.com/45402044/72078394-ea242a80-32f0-11ea-8194-37a63cdf4d79.png)  
	&nbsp;  
	
 ## Sauvegarder un Schéma ou des données dans PgAdmin4
1. Dans pgAdmin4, je selectionne 'Outils' dans la barre de menu, puis 'Sauvegarder' dans le menu déroulant. Je vais commencer par sauvegarder le schéma.
2. La fenêtre Backup s'affiche, dans l'onglet 'General', je clique sur le nom de fichier et donne un nom à mon fichier en s'assurant de mettre l'extension .sql à la fin.  
	&nbsp;  
![Sauvegarde1](https://user-images.githubusercontent.com/45402044/71320799-75f02700-24a8-11ea-839b-c0c5ddc6e8db.png)  
	&nbsp;  
3. De retour dans la fenêtre backup, je mets le type de format sur 'Fichier plat', l'encodage sur 'UTF8' et le rôle sur 'postrgres'.  
	&nbsp;  
![Sauvegarde2](https://user-images.githubusercontent.com/45402044/71320825-d97a5480-24a8-11ea-88b6-72316e6aa45c.png)  
	&nbsp;  
4. Je sélectionne ensuite l'onglet 'Options de sauvegarde'. Je mets le type 'Shéma uniquement' sur 'yes et laisse le 'Blobs' sur 'yes' également. Dans la section requête je met également sur 'yes' tout ce qui concerne les commandes INSERT. Une fois toute les étapes effectuées, je clique sur 'Sauvegarde  
	&nbsp;  
![Sauvegarde3](https://user-images.githubusercontent.com/45402044/71320827-ea2aca80-24a8-11ea-9ae5-af11291bc744.png)
 	&nbsp;  
5. La sauvegarde de mon schéma est crée. Je répète le même processus pour les données, en retirant juste le type 'Shéma uniquement' et en mettant à la place 'Données uniquement' sur 'yes' dans 'Options de sauvegarde'.
	&nbsp;
	
## Sauvegarder la Base de Données complète (Schéma + Données)
1. Dans pgAdmin4, je selectionne la base de données que je souhaite sauvegarder et ensuite je fais un clic droit, puis je selectionne 'Sauvegarder'. Je clic sur l'icone à 3 points, puis choisis le répertoire et le nom ou je souhaite enregistrer la sauvegarde. Je selectionne 'backup' pour le type et je fais 'créer'.  
2. ensuite je laisse le format sur 'Personnalisé', je selectionne dans la partie encodage 'UTF8 et le role 'postgres'. Et je clic sur 'Sauvegarde'. La sauvegarde est faite.
	&nbsp;  
![Sauvegarde complète 1](https://user-images.githubusercontent.com/45402044/72906973-01b8d580-3d2b-11ea-8f25-af967f75d6d4.png)  
	&nbsp;  

## Diagramme de Composants et de Déploiement
1. Le Diagramme de composants est un diagramme qui représente plusieurs composant inclus dans des sous-système qui relié entre eux represente le système global. Un composant est un élément logiciel remplaçable et réutilisable qui fourni ou reçoit unservice bien précis. Il peut être vu comme une pièce détachée du logiciel. Voici celui représentant le système global d'"OC Pizza" :  
	&nbsp;
![DiagrammeDeComposants](https://user-images.githubusercontent.com/45402044/72075605-06719880-32ec-11ea-99cb-3b3ef16810fb.png) 
	&nbsp;
2. Le Diagramme de Déploiement décrit un aspect du système même. Il affiche la configuration des éléments matériels (noeuds) et affiche comment des éléments logiciels et des artefacts sont mappés sur ces noeuds. Voici celui représentant le système global d'"OC Pizza" :  
	&nbsp;
![DiagrammeDeDeploiement](https://user-images.githubusercontent.com/45402044/73606835-633c3800-45a6-11ea-822a-25c272c13a9f.png) 