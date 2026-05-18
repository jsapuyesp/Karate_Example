# Karate Example Project

Este proyecto es un ejemplo de automatización de pruebas utilizando [Karate](https://github.com/karatelabs/karate), una herramienta open source para pruebas de servicios web (API Testing) que permite escribir escenarios en un lenguaje sencillo basado en Gherkin.

## ¿Qué es Karate?
Karate es un framework que combina pruebas de API, mocks, pruebas de performance y automatización de UI. Permite definir escenarios de prueba en archivos `.feature` usando una sintaxis legible y poderosa, integrando validaciones, llamadas HTTP, manipulación de datos y más, todo sin necesidad de escribir código Java para los pasos.

## Estructura del Proyecto
- `src/test/resources/features/` — Contiene los archivos `.feature` con los escenarios de prueba.
- `src/test/java/runner/RunnerKarateTest.java` — Clase Java que ejecuta todos los escenarios Karate y genera reportes.
- `build.gradle` — Configuración de dependencias y plugins para ejecutar las pruebas con Gradle.
- `karate-config.js` — Archivo de configuración global para variables y hooks (si existe).

## ¿Cómo se construyen los escenarios?
Los escenarios se escriben en archivos `.feature` usando Gherkin. Ejemplo:

```gherkin
Feature: Validar estructura de producto

  Scenario: Validar respuesta de producto
    Given url dummyUrl
    And path 'products/1'
    When method get
    Then status 200
    * def productSchema = read('classpath:data/dummyJsonData/product-schema.json')
    And match response == productSchema
```

- **Given/When/Then**: Definen el flujo de la prueba.
- **def**: Permite definir variables o leer archivos externos.
- **match**: Realiza validaciones sobre la respuesta.

## ¿Cómo ejecutar las pruebas?

### Usando Gradle
Asegúrate de tener Java y Gradle instalados. Luego ejecuta:

```sh
./gradlew test
```

Esto ejecutará todos los escenarios Karate y generará reportes en `build/karate-reports` y `build/cucumber-html-reports`.

### Reportes
- **HTML**: `build/karate-reports/karate-summary.html` y `build/cucumber-html-reports/overview-features.html`
- **JSON**: Archivos de resultados para integración continua.

## Dependencias principales
- `com.intuit.karate:karate-junit5` — Motor de ejecución Karate.
- `org.junit.jupiter:junit-jupiter` — Soporte para JUnit 5.
- `net.masterthought:cucumber-reporting` — Generación de reportes HTML.

## Personalización y configuración
- Puedes modificar `karate-config.js` para variables globales, endpoints, o hooks de ejecución.
- Los datos de prueba pueden almacenarse en `src/test/resources/data/`.

## Recursos útiles
- [Documentación oficial de Karate](https://karatelabs.github.io/karate/)
- [Ejemplos de features](https://github.com/karatelabs/karate/tree/master/examples)

---

¡Listo! Ahora puedes crear y ejecutar pruebas de API fácilmente con Karate en este proyecto.
