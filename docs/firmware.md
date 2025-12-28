# Firmware SC945D

## Contexte
Le **SC945D** est un module d'interface utilisateur pour le système domotique Essensys. Il est équipé d'un écran tactile gesté par le puissant contrôleur graphique **4D Systems PICASO-GFX2**.

## Environnement de Build
*(À compléter : Version IDE, Compilateur, Outils 4D Systems Workshop4)*

## Architecture Logicielle
Le firmware repose sur l'interaction entre le MCU hôte et le contrôleur PICASO-GFX2.

### Gestion de l'Affichage (PICASO-GFX2)
L'interface graphique est propulsée par le processeur PICASO. La communication se fait généralement via un bus série (UART).

### Protocole de Communication
Le SC945D communique avec les autres cartes du système (SC940, SC941, etc.) et potentiellement le serveur central. 
*(Détails du protocole à documenter ici)*

## Algorithme de Démarrage
1.  **Initialisation Hardware** : Configuration des pins, clocks, et périphériques.
2.  **Initialisation Écran** : Séquence de démarrage du PICASO-GFX2.
3.  **Vérification Communication** : Ping des autres modules.
4.  **Boucle Principale** : Gestion des événements tactiles et mise à jour de l'affichage.
