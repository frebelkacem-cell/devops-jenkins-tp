# Calculator App - Projet support pour les TP Jenkins/DevOps

Petit projet Java (Maven) volontairement simple, pense pour etre reutilise sur l'ensemble des TP du cours DevOps/Jenkins :

- **Compilation** : `mvn compile` (ou `javac` sur les fichiers de `src/main/java`)
- **Tests unitaires** : `mvn test` (5 tests JUnit 5 dans `CalculatorTest.java`, dont un test qui verifie une exception)
- **Packaging** : `mvn package` (genere `target/calculator-app.jar`, executable avec `java -jar`)
- **Docker** : `Dockerfile` fourni (multi-stage build) pour un futur TP de containerisation
- **Erreur volontaire** : la methode `divide()` leve une exception si on divise par zero -> utile pour provoquer un build en echec puis l'analyser

## Structure
```
devops-tp-project/
  pom.xml
  src/main/java/com/devops/tp/App.java
  src/main/java/com/devops/tp/Calculator.java
  src/test/java/com/devops/tp/CalculatorTest.java
  Dockerfile
```

## Lancer en local
```
mvn compile
mvn test
mvn package
java -jar target/calculator-app.jar
```

## Rapport du projet

Le rapport complet du cours DevOps/Jenkins (les 9 TP realises : Freestyle, Maven, webhook GitHub, SonarQube/JaCoCo, build parametre, deploiement Tomcat, Pipeline, agent maitre-esclave, securite/sauvegarde) se trouve dans le dossier [`rapport/`](rapport/) :

- [`Rapport_TP_DevOps_Jenkins.pdf`](rapport/Rapport_TP_DevOps_Jenkins.pdf) - version PDF complete avec captures d'ecran
- [`Rapport_DevOps_Jenkins.html`](rapport/Rapport_DevOps_Jenkins.html) - version interactive (a telecharger puis ouvrir dans un navigateur)

**A ouvrir en priorite : le fichier `Rapport_DevOps_Jenkins.html`**, qui presente une synthese visuelle du projet (schema du pipeline, statistiques, captures cle) en complement du PDF.
