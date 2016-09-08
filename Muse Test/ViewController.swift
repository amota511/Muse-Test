//
//  ViewController.swift
//  Muse Test
//
//  Created by amota511 on 11/20/15.
//  Copyright © 2015 Aaron Motayne. All rights reserved.
//

import UIKit

class ViewController: ThesaurusWordClass {

    @IBOutlet var OriginalText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationController : Result = segue.destinationViewController as! Result
        let text = OriginalText.text
        let separators = NSCharacterSet(charactersInString: " ")
        let verify = text.componentsSeparatedByCharactersInSet(separators)
        
        var wordCollection = ["beautiful" : beautiful, "beneath" : beneath, "below" : below, "blazing" : blazing, "bright" : bright, "canine" : canine, "child" : child, "children" : children, "complex" : complex, "confess" : confess, "develop" : develop, "developed" : developed, "dog" : dog, "during" : during,"elaborate" : elaborate, "elaborately" : elaborately, "emotion" : emotion, "emotional" : emotional, "energetic" : energetic, "extremely" : extremely, "far" : far, "female" : female, "gentleman" : gentleman, "gentlemen" : gentlemen, "gorgeous" : gorgeous, "guy" : guy, "guys" : guys, "heat" : heat, "home" : home, "hot" : hot, "house" : house, "infant" : infant, "intelligent" : intelligent, "intense" : intense, "intricate" : intricate, "intricately" : intricately, "lady" : lady, "male" : male, "man" : man, "matter" : matter, "men" : men, "multiple" : multiple, "road" : road, "scorching" : scorching, "several" : several, "sharp" : sharp, "street" : street, "stunning" : stunning, "subject" : subject, "supreme" : supreme, "sweltering" : sweltering, "topic" : topic, "torrid" : torrid, "traverse" : traverse, "traversed" : traversed, "under" : under, "underneath" : underneath, "understand" : understand, "vivid" : vivid, "vividly" : vividly, "walk" : walk, "walked" : walked,"walking" : walking, "woman" : woman, "overzealous" : overzealous]
        var newWords = ""
        var oldelements = ""
        var Uppercase = false
        var lastWord = ""
        var beginningCharacter = ""
        var endingCharacter = ""
        var newelements = ""
        
        // Transforming and adding words to next ViewController
        for elements in verify{
            
            if (elements != " ") {
                
                oldelements = elements
                newelements = elements
                
                
                if elements.hasPrefix(",") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("," , withString: "", options: [], range:  Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = ","
                } else if elements.hasPrefix("&") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("&" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "&"
                } else if elements.hasPrefix("*") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("*" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "*"
                } else if elements.hasPrefix("(") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("(" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "("
                } else if elements.hasPrefix(")") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString(")" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = ")"
                }else if elements.hasPrefix("[") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("[" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "["
                } else if elements.hasPrefix("]") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("]" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "]"
                } else if elements.hasPrefix(":") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString(":" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = ":"
                } else if elements.hasPrefix(";") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString(";" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = ";"
                } else if elements.hasPrefix("<") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("<" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "<"
                } else if elements.hasPrefix(">") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString(">" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = ">"
                } else if elements.hasPrefix("/") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("/" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "/"
                } else if elements.hasPrefix("\"") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("\"" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "\""
                } else if elements.hasPrefix("'") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("'" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "'"
                } else if elements.hasPrefix("?") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("?" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "?"
                } else if elements.hasPrefix(".") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("." , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "."
                } else if elements.hasPrefix("!") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("!" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "!"
                } else  if elements.hasPrefix("-") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("-" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "-"
                } else if elements.hasPrefix("{") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("{" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "{"
                } else if elements.hasPrefix("}") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("}" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "}"
                } else if elements.hasPrefix("`") {
                    newelements = oldelements.stringByReplacingOccurrencesOfString("`" , withString: "", options: [], range: Range<String.Index>(start: oldelements.startIndex.advancedBy(0), end: oldelements.startIndex.advancedBy(1)))
                    beginningCharacter = "`"
                }
                
                
                
                if elements.hasSuffix(",") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("," , withString: "", options: [], range: nil)
                    endingCharacter = ","
                } else if elements.hasSuffix("&") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("&" , withString: "", options: [], range: nil)
                    endingCharacter = "&"
                } else if elements.hasSuffix("*") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("*" , withString: "", options: [], range: nil)
                    endingCharacter = "*"
                } else if elements.hasSuffix("(") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("(" , withString: "", options: [], range: nil)
                    endingCharacter = "("
                } else if elements.hasSuffix(")") {
                    newelements = newelements.stringByReplacingOccurrencesOfString(")" , withString: "", options: [], range: nil)
                    endingCharacter = ")"
                } else if elements.hasSuffix("+") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("+" , withString: "", options: [], range: nil)
                    endingCharacter = "+"
                } else if elements.hasSuffix("[") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("[" , withString: "", options: [], range: nil)
                    endingCharacter = "["
                } else if elements.hasSuffix("]") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("]" , withString: "", options: [], range: nil)
                    endingCharacter = "]"
                } else if elements.hasSuffix(":") {
                    newelements = newelements.stringByReplacingOccurrencesOfString(":" , withString: "", options: [], range: nil)
                    endingCharacter = ":"
                } else if elements.hasSuffix(";") {
                    newelements = newelements.stringByReplacingOccurrencesOfString(";" , withString: "", options: [], range: nil)
                    endingCharacter = ";"
                } else if elements.hasSuffix("<") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("<" , withString: "", options: [], range: nil)
                    endingCharacter = "<"
                } else if elements.hasSuffix(">") {
                    newelements = newelements.stringByReplacingOccurrencesOfString(">" , withString: "", options: [], range: nil)
                    endingCharacter = ">"
                } else if elements.hasSuffix("/") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("/" , withString: "", options: [], range: nil)
                    endingCharacter = "/"
                } else if elements.hasSuffix("\"") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("\"" , withString: "", options: [], range: nil)
                    endingCharacter = "\""
                } else if elements.hasSuffix("'") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("'" , withString: "", options: [], range: nil)
                    endingCharacter = "'"
                } else if elements.hasSuffix("?") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("?" , withString: "", options: [], range: nil)
                    endingCharacter = "?"
                } else if elements.hasSuffix(".") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("." , withString: "", options: [], range: nil)
                    endingCharacter = "."
                } else if elements.hasSuffix("!") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("!" , withString: "", options: [], range: nil)
                    endingCharacter = "!"
                } else  if elements.hasSuffix("-") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("-" , withString: "", options: [], range: nil)
                    endingCharacter = "-"
                } else if elements.hasSuffix("{") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("{" , withString: "", options: [], range: nil)
                    endingCharacter = "{"
                } else if elements.hasSuffix("}") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("}" , withString: "", options: [], range: nil)
                    endingCharacter = "}"
                } else if elements.hasSuffix("`") {
                    newelements = newelements.stringByReplacingOccurrencesOfString("`" , withString: "", options: [], range: nil)
                    endingCharacter = "`"
                }
                
                
                if  newelements.hasPrefix("A") || newelements.hasPrefix("B") || newelements.hasPrefix("C") || newelements.hasPrefix("D") || newelements.hasPrefix("E") || newelements.hasPrefix("F") || newelements.hasPrefix("G") || newelements.hasPrefix("H") || newelements.hasPrefix("I") || newelements.hasPrefix("J") || newelements.hasPrefix("K") || newelements.hasPrefix("L") || newelements.hasPrefix("M") || newelements.hasPrefix("N") || newelements.hasPrefix("O") || newelements.hasPrefix("P") || newelements.hasPrefix("Q") || newelements.hasPrefix("R") || newelements.hasPrefix("S") || newelements.hasPrefix("T") || newelements.hasPrefix("U") || newelements.hasPrefix("V") || newelements.hasPrefix("W") || newelements.hasPrefix("X") || newelements.hasPrefix("Y") || newelements.hasPrefix("Z") {
                    newelements = newelements.lowercaseString
                    Uppercase = true
                }
                
                
                if wordCollection.indexForKey(newelements) != nil{
                    var wordArray = wordCollection[newelements]!
                    let wordCount = wordArray.count
                    let randomWord = arc4random_uniform(UInt32(wordCount))
                    let number = Int(randomWord)
                    lastWord = wordArray[number]
                    if Uppercase == true {
                        lastWord = lastWord.capitalizedString
                        Uppercase = false
                    }
                    lastWord += endingCharacter
                    newWords += beginningCharacter
                    newWords += "\(lastWord) "
                    destinationController.Str = newWords
                    beginningCharacter = ""
                    endingCharacter = ""
                    print(newWords, terminator: "")
                    
                }
                else {
                    newWords += "\(elements) "
                    Uppercase = false
                    beginningCharacter = ""
                    endingCharacter = ""
                    destinationController.Str = newWords
                }
                
                
            }
            
            
        }
        
        
    }

        
}

