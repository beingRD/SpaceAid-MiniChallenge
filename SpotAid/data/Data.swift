//
//  Places.swift
//  SpotAid
//
//  Created by SpaceAid Group on 06/11/21.
//

import Foundation
import SwiftUI

let categories = ["Foods", "Drinks", "Trips"]
let places: [Place] = [
    Place(name: "Puok", description: "Along with the branch in the Vomero district. The sky high quality of the ingredients paired with the creativity and unparalleled capability to innovate within and beyond the Neapolitan tradition make this a MUST when in Naples. The amazing attitude of the stuff is the icing on the cake! Great job Egidio and team. Is one of the best Burger places in Naples", image: "puok", address: "Spaccanapoli", category: "foods", transportLine: "Line 1", transportStop: "Duomo", map: "puok_map"),
    Place(name: "Cammarota", description: "Meeting point for young people, students and not, Cammarota combines all thanks to one of the most famous drinks in Italy, the Spritz. Located in the Spanish districts, one of the most characteristic areas of Naples, attracts many people, thanks to its welcoming and festive atmosphere.", image: "cammarota", address: "Quartieri Spagnoli", category: "drinks", transportLine: "Line 1", transportStop: "Toledo", map: "puok_map"),
    Place(name: "Oak", description: "An amazing hidden bar in the very centre of Naples. Small and cozy, great atmosphere with lots of people and great music. They have a great selection of beers and wines, and you get free olives and lupini with your wine. The waiters all speak great English, rare in Italy. They also offers great tips on what to order. The prices are reasonable, 5 euros for a glass of wine and olives.", image: "oak", address: "Vico della quercia", category: "drink", transportLine: "Line 1", transportStop: "Dante", map: "oak_map"),
    Place(name: "L'ex Salumeria", description: "Owned and operated by a European chef, this is a relatively new bistro with real, good quality drinks, comfort food. Sandwiches, schnitzel and home made cabbage soup perogies, all fresh every day. And, of course, European coffee. It offers a comfortable and peaceful atmosphere for a lunch with friends or for a lunch break alone.", image: "exSalumeria", address: "Vico Pazzariello", category: "drinks", transportLine: "Line 1", transportStop: "Università", map: "exsalumeria_map"),
    Place(name: "Caffè Letterario", description: "Intra Moenia is a historic literary cafe in Naples, where you can drink and eat, and where you can organize exhibitions, presentations, concerts and much more... located in the historic center of naples in Piazza Bellini, a meeting point where you can spend time between books, culture while sipping a drink.", image: "caffeLetterario", address: "Piazza Vincenzo Bellini", category: "drinks", transportLine: "Line 1", transportStop: "Dante", map: "caffeLetterario_map"),
    Place(name: "L'Antiquario", description: "If it is the atmosphere you are looking for The antique shop is the right place. a retro style restaurant in the '20s style, very much recalls the style of speakeasy bars. A wide choice, eccentric and definitely very scenic, transports you back in time with jazz music, swing and great drinks.", image: "antiquario", address: "Via Vannella Gaetani", category: "drinks", transportLine: "Line 2", transportStop: "Piazza Amedeo", map: "antiquario_map"),
    Place(name: "Barrio Botanico", description: "Located within one of the famous historical buildings of Naples, the Barrio Botanico contrasts (offers a dystonia) to the ancient style of the palace a modern and original environment that definitely captures the attention. Great place to have a drink with friends, and perfect as a location for the most 'social' thanks to its style.", image: "barrioBotanico", address: "Via Medina", category: "drinks", transportLine: "Line 1", transportStop: "Toledo", map: "barrioBotanico_map"),
    Place(name: "120 Grammi", description: "If you are busy, always around, and with little time available but you do not want to give up on one of the dishes that most represents Italy, 120 Grams revolutionizes the way of eating spaghetti. You can spoil them even while you’re around in the heart of Naples, without losing the quality of a good pasta dish. Wide choice and a great way for tourists to fully experience the Italian spirit.", image: "120grammi", address: "Via Mezzocannone", category: "foods", transportLine: "Line 1", transportStop: "Dante", map: "120grammi_map"),
    Place(name: "Bicchierino", description: "Meeting point for students is definitely Bicchierino. A place located in the central area of naples, where most of the university faculties of naples are concentrated, which gathers Italian students and not that gives the opportunity to meet people and make new friends between a shot and a beer, creating an international community.", image: "bicchierino", address: "Via Enrico De Marinis", category: "drinks", transportLine: "Line 1", transportStop: "Università", map: "bicchierino_map"),
    Place(name: "Casa Infante", description: "Okay pasta, pizza etc are all typical Italian dishes,  but there is also need for dessert in life. When it comes to sweets, ice cream or pastry, Casa Infante is the right place. With an almost centenary experience, a style that recalls the old shops of the '800, Casa Infante offers a wide selection of pastries... from typical sweets to dozens of ice cream tastes can satisfy everyone giving a pleasant and sweet break from the hectic modern life.", image: "casaInfante", address: "Via Toledo", category: "foods", transportLine: "Line 1", transportStop: "Toledo", map: "casaInfante_map"),
    Place(name: "Antica Pizzeria Da Michele", description: "One of the pillars of the typical Neapolitan gastronomy is definitely La pizzeria da Michele. Centenary tradition , in the preparation of the dish that most represents Italy, La pizzeria da Michele offers an experience in the culture of pizza. Offering tradition, history and excellent quality, it becomes a reference point for tourists and not, for one of the most famous dishes of Italy, pizza.", image: "michele", address: "Via Cesare Sersale", category: "foods", transportLine: "Line 1", transportStop: "Duomo", map: "michele_map"),
    Place(name: "Nennella", description: "In the heart of one of the most popular districts of Naples, the Spanish Quarters, there is one of the most famous trattorias of Naples, Nennella. Cheerful, lively, colorful, noisy are the words that describe the atmosphere that you live eating from Nennella. Among songs, dances and great food, Nennella, with simple but excellent dishes, satisfies the palates of many people among tourists and not, making the consumer an actor of an Italian film '50s.", image: "nennella", address: "Vico Lungo, Teatro Nuovo", category: "foods", transportLine: "Line 1", transportStop: "Toledo", map: "nennella_map"),
    Place(name: "Sorbillo", description: "Sorbillo is one of the institutions in Neapolitan gastronomy. If we are talking about pizza, or in particular fried pizza, Sorbillo is definitely a must. Close to Piazza del Plebiscito and at the end of one of the busiest streets full of shops, it is a traditional destination for tourists, or for people who stop during a walk, shopping or break from work.", image: "sorbillo", address: "Via Dei Tribunali", category: "foods", transportLine: "Line 1", transportStop: "Dante", map: "sorbillo_map"),
    Place(name: "Tandem", description: "Home cooking is a distinctive feature of Italian culinary culture. One of the most common scenarios is the Sunday lunch with the typical pasta dish with the sauce made by your grandmother.Tandem is able to make you relive that feeling in full. Dishes based on sauce, including vegetarians, first and second courses abundant and at a great price to relive the taste of home at all times.", image: "tandem", address: "Via Mezzocannone", category: "foods", transportLine: "Line 1", transportStop: "Duomo", map: "tandem_map"),
    Place(name: "Tappò", description: "It’s evening, you’re done working, studying, or just hanging out with friends. Well then it’s time for an aperitif! Surely if you are in the old town, one of the best places is Tappò. Friendly and welcoming atmosphere, excellent drinks and appetizers rich and tasty, for a break after a busy day.", image: "tappo", address: "Via Mezzocannone", category: "drinks", transportLine: "Line 1", transportStop: "Università", map: "tappo_map"),
    Place(name: "Maschio Angioino", description: "The Maschio Angioino is a historic medieval and Renaissance castle, as well as one of the symbols of the city of Naples. The castle dominates the scenic Piazza Municipio and is home to the Neapolitan Society of National History and the Naples Committee of the Institute for the History of the Italian Risorgimento. In the complex is located the Civic Museum, which includes the Palatine Chapel and the museum routes of the first and second floors.", image: "maschio", address: "Via Mezzocannone", category: "trips", transportLine: "Line 1", transportStop: "Municipio", map: "maschio_map"),
   Place(name: "Galleria Umberto I", description: "Galleria Umberto I is a commercial gallery built in Naples between 1887 and 1890. It is dedicated to Umberto I of Italy. Inside the gallery there are commercial activities such as fashion and clothing shops, restaurants, cafes and a fastfood. The gallery also includes offices, some private houses and hotels and the famous 'Coral Museum'.", image: "galleria", address: "Via San Carlo", category: "trips", transportLine: "Line 1", transportStop: "Municipio", map: "galleria_map"),
    Place(name: "Castel dell'Ovo", description: "Castel dell'Ovo is the oldest castle in the city of Naples and is one of the elements that stand out most in the famous panorama of the gulf. It is located between the districts of San Ferdinando and Chiaia.", image: "ovo", address: "Via Eldorado", category: "trips", transportLine: "Line 1", transportStop: "Municipio", map: "ovo_map"),
    Place(name: "Museo e Real Bosco di Capodimonte", description: "The Capodimonte National Museum is a museum that houses galleries of ancient art, one of contemporary art and a historical apartment. It preserves mainly paintings, widely distributed in the two main collections, that is the Farnese and that of the Neapolitan Gallery. Also important is the collection of contemporary art, the only one of its kind in Italy[3], in which stands out Vesuvius by Andy Warhol.", image: "museo", address: "Via Miano", category: "trips", transportLine: "Bus 254", transportStop: "Capodimonte", map: "museo_map"),
    Place(name: "Piazza del Plebiscito", description: "Piazza del Plebiscito, located in the historic center, between the promenade and Via Toledo, contains the beautiful Royal Papal Basilica of San Francesco di Paola. With an area of about 25,000 square meters the square looks like one of the largest in the city and Italy and for this reason it is the one most used for major events. ", image: "plebiscito", address: "Piazza del Plebiscito", category: "trips", transportLine: "Line 1", transportStop: "Municipio", map: "plebiscito_map"),
    Place(name: "Palazzo Reale", description: "The Royal Palace of Naples is a historic building located in Piazza del Plebiscito, in the historic center of Naples, where the main entrance is located: the entire complex with the various rooms and rooms of the palace, including the gardens and the theater San Carlo.", image: "palazzo", address: "Piazza del Plebiscito", category: "trips", transportLine: "Line 1", transportStop: "Municipio", map: "palazzo_map"),
    Place(name: "Duomo di Napoli", description: "The cathedral of Naples, whose official name is metropolitan cathedral of Santa Maria Assunta, is a monumental basilica as well as cathedral and seat of the archdiocese of the city of Naples. The Cathedral contains the basilica of Santa Restituta, which houses the oldest baptistery in the West, that of San Giovanni in Fonte, and the royal chapel of the Treasury of San Gennaro, which preserves the relics of the patron saint of the city.", image: "duomo", address: "Piazza del Plebiscito", category: "trips", transportLine: "Line 2", transportStop: "Piazza Cavour", map: "duomo_map")
    ]
