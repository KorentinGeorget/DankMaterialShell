pragma Singleton

pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool unlocking: false
    property string randomFact: ""
    property string pamState: ""
    property bool powerDialogVisible: false
    property bool rebootDialogVisible: false
    property bool logoutDialogVisible: false

    property var facts: ["A photon takes 100,000 to 200,000 years bouncing through the Sun's dense core, then races to Earth in just 8 minutes 20 seconds.", "A teaspoon of neutron star matter would weigh a billion metric tons here on Earth.", "Right now, 100 trillion solar neutrinos are passing through your body every second.", "The Sun converts 4 million metric tons of matter into pure energy every second—enough to power Earth for 500,000 years.", "The universe still glows with leftover heat from the Big Bang—just 2.7 degrees above absolute zero.", "There's a nebula out there that's actually colder than empty space itself.", "We've detected black holes crashing together by measuring spacetime stretch by less than 1/10,000th the width of a proton.", "Fast radio bursts can release more energy in 5 milliseconds than our Sun produces in 3 days.", "Our galaxy might be crawling with billions of rogue planets drifting alone in the dark.", "Distant galaxies can move away from us faster than light because space itself is stretching.", "The edge of what we can see is 46.5 billion light-years away, even though the universe is only 13.8 billion years old.", "The universe is mostly invisible: 5% regular matter, 27% dark matter, 68% dark energy.", "A day on Venus lasts longer than its entire year around the Sun.", "On Mercury, the time between sunrises is 176 Earth days long.", "In about 4.5 billion years, our galaxy will smash into Andromeda.", "Most of the gold in your jewelry was forged when neutron stars collided somewhere in space.", "PSR J1748-2446ad, the fastest spinning star, rotates 716 times per second—its equator moves at 24% the speed of light.", "Cosmic rays create particles that shouldn't make it to Earth's surface, but time dilation lets them sneak through.", "Jupiter's magnetic field is so huge that if we could see it, it would look bigger than the Moon in our sky.", "Interstellar space is so empty it's like a cube 32 kilometers wide containing just a single grain of sand.", "Voyager 1 is 24 billion kilometers away but won't leave the Sun's gravitational influence for another 30,000 years.", "Counting to a billion at one number per second would take over 31 years.", "Space is so vast, even speeding at light-speed, you'd never return past the cosmic horizon.", "Astronauts on the ISS age about 0.01 seconds less each year than people on Earth.", "Sagittarius B2, a dust cloud near our galaxy's center, contains ethyl formate—the compound that gives raspberries their flavor and rum its smell.", "Beyond 16 billion light-years, the cosmic event horizon marks where space expands too fast for light to ever reach us again.", "Even at light-speed, you'd never catch up to most galaxies—space expands faster.", "Only around 5% of galaxies are ever reachable—even at light-speed.", "If the Sun vanished, we'd still orbit it for 8 minutes before drifting away.", "If a planet 65 million light-years away looked at Earth now, it'd see dinosaurs.", "Our oldest radio signals will reach the Milky Way's center in 26,000 years.", "Every atom in your body heavier than hydrogen was forged in the nuclear furnace of a dying star.", "The Moon moves 3.8 centimeters farther from Earth every year.", "The universe creates 275 million new stars every single day.", "Jupiter's Great Red Spot is a storm twice the size of Earth that has been raging for at least 350 years.", "If you watched someone fall into a black hole, they'd appear frozen at the event horizon forever—time effectively stops from your perspective.", "The Boötes Supervoid is a cosmic desert 1.8 billion light-years across with 60% fewer galaxies than it should have."]

    function pickRandomFact() {
        var facts_fr = [
            "Un photon met 200 000 ans à traverser le noyau du Soleil, puis atteint la Terre en 8 minutes.",
            "Une cuillère à café de matière d'étoile à neutrons pèserait un milliard de tonnes sur Terre.",
            "Chaque seconde, 100 billions de neutrinos solaires traversent votre corps sans que vous le sentiez.",
            "Le Soleil convertit 4 millions de tonnes de matière en énergie pure chaque seconde.",
            "L'univers brille encore de la chaleur résiduelle du Big Bang, à seulement 2,7 degrés du zéro absolu.",
            "Nous avons détecté des fusions de trous noirs en mesurant une déformation de l'espace 10 000 fois plus petite qu'un proton.",
            "Notre galaxie pourrait abriter des milliards de planètes 'nomades', dérivant seules dans l'obscurité.",
            "Les galaxies lointaines s'éloignent de nous plus vite que la lumière, car c'est l'espace lui-même qui s'étire.",
            "L'univers visible s'étend sur 46,5 milliards d'années-lumière, bien qu'il n'ait que 13,8 milliards d'années.",
            "L'univers est principalement invisible : 5% de matière ordinaire, 27% de matière noire, 68% d'énergie noire.",
            "Une journée sur Vénus dure plus longtemps que son année entière autour du Soleil.",
            "Dans 4,5 milliards d'années, notre galaxie, la Voie lactée, entrera en collision avec Andromède.",
            "La majeure partie de l'or de vos bijoux a été forgée lors de la collision d'étoiles à neutrons.",
            "L'étoile la plus rapide, PSR J1748-2446ad, tourne sur elle-même 716 fois par seconde.",
            "Le champ magnétique de Jupiter est si énorme que si nous pouvions le voir, il apparaîtrait plus grand que la Lune dans notre ciel.",
            "Bételgeuse, une supergéante rouge, est si grande que si elle était notre Soleil, elle engloutirait Jupiter.",
            "Les astronautes rapportent que l'espace a une odeur de métal chaud, de viande grillée et de fumée de soudure.",
            "Il existe probablement des planètes composées en grande partie de diamant, comme 55 Cancri e.",
            "Dans l'espace, personne ne peut vous entendre crier, car le son n'a aucun milieu pour se propager.",
            "Les sondes Voyager, lancées en 1977, continuent leur voyage hors du système solaire, portant un message de l'humanité.",
            "Il existe une nébuleuse qui est en réalité plus froide que le vide spatial lui-même.",
            "Les sursauts radio rapides peuvent libérer plus d'énergie en 5 millisecondes que notre Soleil en 3 jours.",
            "Sur Mercure, le temps entre deux levers de soleil dure 176 jours terrestres.",
            "Les rayons cosmiques créent des particules qui ne devraient pas atteindre la surface de la Terre, mais la dilatation du temps leur permet de le faire.",
            "L'espace interstellaire est si vide qu'un cube de 32 kilomètres de côté ne contiendrait qu'un seul grain de sable.",
            "Compter jusqu'à un milliard, à raison d'un chiffre par seconde, prendrait plus de 31 ans.",
            "Les astronautes sur la Station Spatiale Internationale vieillissent d'environ 0,01 seconde de moins chaque année que les gens sur Terre.",
            "Le nuage de poussière Sagittarius B2, près du centre de notre galaxie, contient le composé qui donne aux framboises leur saveur et au rhum son odeur.",
            "Si le Soleil disparaissait, nous continuerions à tourner en orbite pendant 8 minutes avant de dériver dans l'espace.",
            "Si une civilisation sur une planète à 65 millions d'années-lumière regardait la Terre, elle y verrait des dinosaures.",
            "Chaque atome de votre corps plus lourd que l'hydrogène a été forgé dans la fournaise nucléaire d'une étoile mourante.",
            "La Lune s'éloigne de la Terre de 3,8 centimètres chaque année.",
            "L'univers crée 275 millions de nouvelles étoiles chaque jour.",
            "La Grande Tache Rouge de Jupiter est une tempête deux fois plus grande que la Terre qui fait rage depuis au moins 350 ans.",
            "Si vous regardiez quelqu'un tomber dans un trou noir, il semblerait figé pour toujours à l'horizon des événements.",
            "Le Supervide du Bouvier est un désert cosmique de 1,8 milliard d'années-lumière de diamètre avec 60% de galaxies en moins que prévu."
        ];
        randomFact = facts_fr[Math.floor(Math.random() * facts_fr.length)]
    }

    function resetState() {
        unlocking = false
        pamState = ""
        powerDialogVisible = false
        rebootDialogVisible = false
        logoutDialogVisible = false
        pickRandomFact()
    }

    function setPamState(state) {
        pamState = state
    }

    function setUnlocking(value) {
        unlocking = value
    }

    function showPowerDialog() {
        powerDialogVisible = true
    }

    function hidePowerDialog() {
        powerDialogVisible = false
    }

    function showRebootDialog() {
        rebootDialogVisible = true
    }

    function hideRebootDialog() {
        rebootDialogVisible = false
    }

    function showLogoutDialog() {
        logoutDialogVisible = true
    }

    function hideLogoutDialog() {
        logoutDialogVisible = false
    }

    Component.onCompleted: {
        pickRandomFact()
    }
}
