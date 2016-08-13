//
//  DataSource.swift
//  TTUTutoring
//
//  This is where the static data is being managed
//
//

import Foundation

var subjects = [
    "Accouting",
    "Chemistry",
    "Computer Sci.",
    "Economics",
    "English",
    "Math",
    "Mech. Eng.",
    "Physics",
    "Statistics",
    "Pol. Sci/Pysch",
    "Finance"
]

struct Tutor {
    var tutorName: String = ""
    var tutorSubjects: [String] = [""]
    var tutorSchedule: [String:String] = ["":""]
}

class TutorData {
    var Tutors: [Tutor] = []
    
    init(){
        Tutors = []
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
        Tutors.append(Alex)
        
        Bijaya.tutorName = "Bijaya"
        Bijaya.tutorSubjects = ["Chemistry", "Math"]
        Bijaya.tutorSchedule = ["Monday-Friday":"10am-2pm"]
        Tutors.append(Bijaya)
        
        Bobbie.tutorName = "Bobbie"
        Bobbie.tutorSubjects = ["Math", "Physics"]
        Bobbie.tutorSchedule = ["Monday-Friday":"9-11am, 2:30-4:30pm"]
        Tutors.append(Bobbie)
        
        Chris.tutorName = "Chris"
        Chris.tutorSubjects = ["Computer Sci.", "Math", "Physics"]
        Chris.tutorSchedule = ["Monday-Friday":"1-5pm"]
        Tutors.append(Chris)
        
        Cole.tutorName = "Cole"
        Cole.tutorSubjects = ["Chemistry", "Math"]
        Cole.tutorSchedule = ["Monday-Friday":"8am-12pm"]
        Tutors.append(Cole)
        
        Daniel.tutorName = "Daniel"
        Daniel.tutorSubjects = ["Accounting", "Finance", "Math"]
        Daniel.tutorSchedule = ["Monday-Friday":"1-5pm"]
        Tutors.append(Daniel)
        
        David.tutorName = "David"
        David.tutorSubjects = ["Math", "Mech. Eng.", "Physics"]
        David.tutorSchedule = ["Monday-Friday":"1-5pm"]
        Tutors.append(David)
        
        Dhruuv.tutorName = "Dhruuv"
        Dhruuv.tutorSubjects = [""]
        Dhruuv.tutorSchedule = ["Monday-Friday":"10am-2pm"]
        Tutors.append(Dhruuv)
        
        Elaina.tutorName = "Elaina"
        Elaina.tutorSubjects = ["Math", "Statistics"]
        Elaina.tutorSchedule = ["Monday":"9:45-11:15pm", "Wednesday":"9:45-11:15pm"]
        Tutors.append(Elaina)
        
        Kovi.tutorName = "Kovi"
        Kovi.tutorSubjects = ["Economics", "Finance"]
        Kovi.tutorSchedule = ["Monday-Friday":"2-5pm"]
        Tutors.append(Kovi)
        
        Levin.tutorName = "Levin"
        Levin.tutorSubjects = ["Math", "Physics"]
        Levin.tutorSchedule = ["Monday-Thursday":"2-5pm", "Friday":"10am-2pm"]
        Tutors.append(Levin)
        
        Megan.tutorName = "Megan"
        Megan.tutorSubjects = ["English", "Statistics", "Pol. Sci/Pysch"]
        Megan.tutorSchedule = ["Monday-Friday":"11am-3pm"]
        Tutors.append(Megan)
        
        Solabomi.tutorName = "Solabomi"
        Solabomi.tutorSubjects = ["Economics", "Pol. Sci/Pysch"]
        Solabomi.tutorSchedule = ["Monday-Friday":"8-11:45am"]
        Tutors.append(Solabomi)
        
        Yewande.tutorName = "Yewande"
        Yewande.tutorSubjects = ["Accounting"]
        Yewande.tutorSchedule = ["Monday-Thursday":"9am-2pm"]
        Tutors.append(Yewande)
    }
    
    func numberOfTutorsWithSubject(subject: String)->Int{
        var count: Int = 0
        for tutor in Tutors{
            if(tutor.tutorSubjects.contains(subject)){
               count = count + 1
            }
        }
        return count
    }
    
    func tutorsWithSubject(subject: String)->[Tutor]{
        var x: [Tutor] = []
        for tutor in Tutors{
            if(tutor.tutorSubjects.contains(subject)){
                x.append(tutor)
            }
        }
        
        return x
    }
}









