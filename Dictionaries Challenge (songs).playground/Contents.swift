//: Playground - noun: a place where people can play

import UIKit

//key : title, artist, album

var songs = [
                     ["title" : "Mr. Jones", "artist": "Counting Crows", "album": "August and Everything After"],
                     ["title" : "Machine Head", "artist": "Bush", "album": "16 Stone"],
                     ["title" : "Open Arms", "artist": "Journey", "album": "Some 70's Album"],
                     ["title" : "Mouth", "artist": "Bush", "album": "Razorblade Suitcase"],
                     ["title" : "The Cellist of Sarajevo", "artist": "Yo-Yo Ma", "album": "The Essential Yo-Yo Ma"],
                     ["title" : "Ah Mes Amis", "artist": "Three Mo' Tenors", "album": "Three Mo' Tenors"],
                     ["title" : "Ashokan Farewell", "artist": "Jenny Oaks Baker", "album": "The Best of Jenny Oaks Baker"]
                    ]


if (songs[0]["title"] != nil){
var fvSong = songs[0]["title"]!
    println("When I was young my favorite song was \(fvSong).")}
for item in songs {
    println(item["title"]! )
}

