//
//  Planet.swift
//  DZ_Space
//
//  Created by user on 10/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import Foundation
import SceneKit

struct Planet {
    
    let name: String
    let description: String
    let moons: Int
    let temperature: String
    let node: PlanetNode
    
}

extension Planet {
    
    static func getPlanets() -> [Planet] {
        
        let mercury = Planet(name: "MERCURY",
                           description: """
                                        Mercury is the closest planet to the Sun and due to its proximity it is not easily seen except during twilight.
                                        For every two orbits of the Sun, Mercury completes three rotations about its axis and up until 1965 it was thought that the same side of Mercury constantly faced the Sun.
                                        Thirteen times a century Mercury can be observed from the Earth passing across the face of the Sun in an event called a transit, the next will occur on the 9th May 2016.
                                        """,
                           moons: 0,
                           temperature: "-173 to 427°C",
                           node: PlanetNode(textureName: "mercury.jpg"))
        
        let venus = Planet(name: "VENUS",
                             description: """
                                        Venus is the second planet from the Sun and is the second brightest object in the night sky after the Moon.
                                        Named after the Roman goddess of love and beauty,
                                        Venus is the second largest terrestrial planet and is sometimes referred to as the Earth’s sister planet due the their similar size and mass.
                                        The surface of the planet is obscured by an opaque layer of clouds made up of sulphuric acid.
                                        """,
                             moons: 0,
                             temperature: "462 °C",
                             node: PlanetNode(textureName: "venus.jpg"))
        
        let earth = Planet(name: "EARTH",
                           description: """
                                        Earth is the third planet from the Sun and is the largest of the terrestrial planets.
                                        The Earth is the only planet in our solar system not to be named after a Greek or Roman deity.
                                        The Earth was formed approximately 4.54 billion years ago and is the only known planet to support life.
                                        """,
                           moons: 1,
                           temperature: "-88 to 58°C",
                           node: PlanetNode(textureName: "earth.jpg"))
        
        let mars = Planet(name: "MARS",
                           description: """
                                        Mars is the fourth planet from the Sun and is the second smallest planet in the solar system.
                                        Named after the Roman god of war, Mars is also often described as the “Red Planet” due to its reddish appearance.
                                        Mars is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide.
                                        """,
                           moons: 2,
                           temperature: "-153 to 20 °C",
                           node: PlanetNode(textureName: "mars.jpg"))
        
        let jupiter = Planet(name: "JUPITER",
                          description: """
                                        The planet Jupiter is the fifth planet out from the Sun, and is two and a half times more massive than all the other planets in the solar system combined.
                                        It is made primarily of gases and is therefore known as a “gas giant”.
                                        """,
                          moons: 79,
                          temperature: "-148 °C",
                          node: PlanetNode(textureName: "jupiter.jpg"))
        
        let saturn = Planet(name: "SATURN",
                             description: """
                                        Saturn is the sixth planet from the Sun and the most distant that can be seen with the naked eye.
                                        Saturn is the second largest planet and is best known for its fabulous ring system that was first observed in 1610 by the astronomer Galileo Galilei.
                                        Like Jupiter, Saturn is a gas giant and is composed of similar gasses including hydrogen, helium and methane.
                                        """,
                             moons: 62,
                             temperature: "-178 °C",
                             node: PlanetNode(textureName: "saturn.jpg"))
        
        let uranus = Planet(name: "URANUS",
                            description: """
                                        Uranus is the seventh planet from the Sun. While being visible to the naked eye,
                                        it was not recognised as a planet due to its dimness and slow orbit.
                                        Uranus became the first planet discovered with the use of a telescope.
                                        Uranus is tipped over on its side with an axial tilt of 98 degrees.
                                        It is often described as “rolling around the Sun on its side.”
                                        """,
                            moons: 27,
                            temperature: "-216 °C",
                            node: PlanetNode(textureName: "uranus.jpg"))
        
        let neptune = Planet(name: "NEPTUNE",
                            description: """
                                        Neptune is the eighth planet from the Sun making it the most distant in the solar system.
                                        This gas giant planet may have formed much closer to the Sun in early solar system history before migrating to its present position.
                                        """,
                            moons: 14,
                            temperature: "-214 °C",
                            node: PlanetNode(textureName: "neptune.jpg"))
        
        
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]
    }
    
}
