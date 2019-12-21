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
![DiagrammeDeClasse](https://user-images.githubusercontent.com/45402044/71312030-4d234f80-241e-11ea-8179-1b0b5715fbe0.png)  
	&nbsp;  


## Modèle Physique de Données

1. La première étape consiste à partir du diagramme de classe que l 'on vient de finir, d'élaborer le modèle physique de données sommairement à l'aide du logiciel "Power Architect".  
	 &nbsp;
2. J'ajoute ensuite les différentes clés primaires et étrangères de chaque table.  
	&nbsp;
3. J'obtiens le résultat suivant :  
![MPD](https://user-images.githubusercontent.com/45402044/71312061-b30fd700-241e-11ea-879c-be9b9f7eeab0.png)
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
 