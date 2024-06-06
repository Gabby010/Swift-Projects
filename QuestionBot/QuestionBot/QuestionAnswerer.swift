struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        if question.starts(with: "Hello") {
            return "Hi, there"
        } else if question.starts(with: "Which country should I visit?"){
            return "South Korea"
        } else if question.starts(with: "What is the coolest place in the world?") {
            return "Disney World"
        }
        else if question.starts(with: "What is one of the best movies ever?"){
            return "Harry Potter"
        }
        else if question.starts(with: "Give me a good fantasy comedy series recommendation?"){
            return "Wednesday"
        }
        else if question.starts(with: "How many degrees are outside?"){
            return "60"
        }
        else if question.starts(with: "Where should I go next year?") {
            return "New York"
        }
        else if question.starts(with: "name most people's favorite holiday?"){
            return "Christmas"
        }
        else if question.starts(with: "which season is approaching?"){
            return "Winter"
        }
            
        else {
            return "no clue"
        }
        
    }
        // TODO: Write a response
        
    }

//responseTo(question: "Hello there?")
//responseTo(question: "which country should I visit?")
//responseTo(question: "What is the coolest place in the world?")
//responseTo(question: "Tell me what is one of the best movies ever?")
//responseTo(question: "Give me a good fantasy-comedy series recommendation?")
//responseTo(question: "how many degrees are outside?")
//responseTo(question: "Where should I go next year?")
//responseTo(question: "mention your favorite holiday?")
//responseTo(question: "do you have a favorite season?")

    
    


