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
