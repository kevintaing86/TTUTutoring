//
//  DataSource.swift
//  TTUTutoring
//
//  This is where the static data is being managed
//
//

import Foundation

struct Tutor {
    var tutorName: String = ""
    var tutorSubjects: [String] = [""]
    var tutorSchedule: [String:String] = ["":""]
}

class TutorData {
    var Tutors: [Tutor]?
    
    init(){
        var Alex = Tutor()
        var Bijaya = Tutor()
        var Bobbie = Tutor()
        var Chris = Tutor()
        var Cole = Tutor()
        var Daniel = Tutor()
        var David = Tutor()
        var Dhruuv = Tutor()
        var Elaina = Tutor()
        var Kovi = Tutor()
        var Levin = Tutor()
        var Megan = Tutor()
        var Solabomi = Tutor()
        var Yewande = Tutor()
        
        Alex.tutorName = "Alex"
        Alex.tutorSubjects = ["Accounting", "Math", "Pol. Sci/Pysch"]
        Alex.tutorSchedule = ["Monday-Friday":"8-9:45am, 12-2:15pm"]
        Tutors?.append(Alex)
        
        Bijaya.tutorName = "Bijaya"
        Bijaya.tutorSubjects = ["Chemistry", "Math"]
        Bijaya.tutorSchedule = ["Monday-Friday":"10am-2pm"]
        Tutors?.append(Bijaya)
        
        Bobbie.tutorName = "Bobbie"
        Bobbie.tutorSubjects = ["Math", "Physics"]
        Bobbie.tutorSchedule = ["Monday-Friday":"9-11am, 2:30-4:30pm"]
        Tutors?.append(Bobbie)
    }
}