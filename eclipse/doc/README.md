# PROJET 5 - Concevez la solution technique d’un système de gestion de pizzeria 
___  

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
![photo diagramme de classe](DiagrammeDeClasse.png "diagramme de classe")  
	&nbsp;  


## Modèle Physique de Données

1. La première étape consiste à partir du diagramme de classe que l 'on vient de finir, d'élaborer le modèle physique de données sommairement à l'aide du logiciel "Power Architect".  
	 &nbsp;
2. J'ajoute ensuite les différentes clés primaires et étrangères de chaque table.  
	&nbsp;
3. J'obtiens le résultat suivant :  
![photo Modèle Physique de Données](MPD.png "Modèle Physique de Données")  
	&nbsp;  


## Création de la Base de Données
1. Dans "Power Architect", je génère la base de données à partir de mon modèle physique de données, en cliquant sur l'icone SQL situé en dessous du menu 'enterprise'.  
	 &nbsp;  
![photo création de la base de données 1](créationBaseDeDonnées1.png "création de la base de données 1")  
	 &nbsp;  
2. Ensuite je copie le code crée en SQL, à l'aide du bouton "Copy".  
	&nbsp;  
![photo création de la base de données 2](créationBaseDeDonnées2.png "création de la base de données 2")  
	&nbsp;  
3. Je me connecte dans "pgAdmin4" et je crée une nouvelle base de données.
	&nbsp;  
![photo création de la base de données 3](créationBaseDeDonnées3.png "création de la base de données 3")  
	&nbsp;  
4. Je rentre le nom de ma base de données, je l'enregistre, et ma base de données apparait dans le navigateur.  
	&nbsp;  
![photo création de la base de données 4](créationBaseDeDonnées4.png "création de la base de données 4")  
	&nbsp;  
5. Je clique sur l'icone éclair(1), la partie 'Editeur de requêtes' s'affiche. Je colle le code crée en SQL sur "Power Architect" dans cette partie et valide à l'aide de l'icone éclaire(2). Les tables du groupe "OC Pizza" sont maintenant dans la base données.
	&nbsp;  
	
![photo création de la base de données 5](créationBaseDeDonnées5.png "création de la base de données 5")  
	&nbsp;  
6. J'ai également installé le plug-in DTP pour éclipse, me permettant d'avoir accés au base de données via le logiciel.   
	&nbsp;  
![photo création de la base de données 6](créationBaseDeDonnées6.png "création de la base de données 6") 
	
## Sauvegarder un Schéma ou des données dans PgAdmin4
1. Dans pgAdmin4, je selectionne 'Outils' dans la barre de menu, puis 'Sauvegarder' dans le menu déroulant. Je vais commencer par sauvegarder le schéma.
2. La fenêtre Backup s'affiche, dans l'onglet 'General', je clique sur le nom de fichier et donne un nom à mon fichier en s'assurant de mettre l'extension .sql à la fin.  
	&nbsp;  
![photo Sauvegarde 1](Sauvegarde1.png "Sauvegarde 1")  
	&nbsp;  
3. De retour dans la fenêtre backup, je mets le type de format sur 'Fichier plat', l'encodage sur 'UTF8' et le rôle sur 'postrgres'.  
	&nbsp;  
![photo Sauvegarde 2](Sauvegarde2.png "Sauvegarde 2")  
	&nbsp;  
4. Je sélectionne ensuite l'onglet 'Options de sauvegarde'. Je mets le type 'Shéma uniquement' sur 'yes et laisse le 'Blobs' sur 'yes' également. Dans la section requête je met également sur 'yes' tout ce qui concerne les commandes INSERT. Une fois toute les étapes effectuées, je clique sur 'Sauvegarde  
	&nbsp;  
![photo Sauvegarde 3](Sauvegarde3.png "Sauvegarde 3")  
	&nbsp;  
5. La sauvegarde de mon schéma est crée. Je répète le même processus pour les données, en retirant juste le type 'Shéma uniquement' et en mettant à la place 'Données uniquement' sur 'yes' dans 'Options de sauvegarde'.  
	&nbsp;
	
## Sauvegarder la Base de Données complète (Schéma + Données)
1. Dans pgAdmin4, je selectionne la base de données que je souhaite sauvegarder et ensuite je fais un clic droit, puis je selectionne 'Sauvegarder'. Je clic sur l'icone à 3 points, puis choisis le répertoire et le nom ou je souhaite enregistrer la sauvegarde. Je selectionne 'backup' pour le type et je fais 'créer'.  
2. ensuite je laisse le format sur 'Personnalisé', je selectionne dans la partie encodage 'UTF8 et le role 'postgres'. Et je clic sur 'Sauvegarde'. La sauvegarde est faite.
![photo Sauvegarde complète 1](Sauvegarde complète 1.png "Sauvegarde complète 1")  
	&nbsp;  
	
## Diagramme de Composants et de Déploiement
1. Le Diagramme de composants est un diagramme qui représente plusieurs composant inclus dans des sous-système qui relié entre eux represente le système global. Un composant est un élément logiciel remplaçable et réutilisable qui fourni ou reçoit un service bien précis. Il peut être vu comme une pièce détachée du logiciel. Voici celui représentant le système global d'"OC Pizza" :  
	&nbsp;
![photo Diagramme de Composants](DiagrammeDeComposants.png "Diagramme de Composants")  
	&nbsp;
2. Le Diagramme de Déploiement décrit un aspect du système même. Il affiche la configuration des éléments matériels (noeuds) et affiche comment des éléments logiciels et des artefacts sont mappés sur ces noeuds. Voici celui représentant le système global d'"OC Pizza" :  
	&nbsp;
![photo Diagramme de Déploiement](DiagrammeDeDeploiement.png "Diagramme de Déploiement")  

