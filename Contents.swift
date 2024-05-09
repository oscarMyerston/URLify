import Foundation

// Mark - URLify

/**
 Challenge:  See if you can replaces all the spaces in a string with the ASCII symbol for space %20.  Assume you are given
 the final string.  Hint: use array of char[]

 */

func urlify(_ url: String, length: Int) -> String {
    // Create a bucket to hold our final result
    var result: [Character] = Array<Character>(repeating: " ", count: length)

    // Strip off any space at beginning or end
    let url: String = url.trimmingCharacters(in: .whitespacesAndNewlines)

    // Loop througt url, and insert an ASCII space %20 whenever we hit a space
    let urlChars: [String.Element] = Array(url)

    // Also create a pointer o keep track of where we are in our results array
    var pointer: Int = 0
    for i in 0..<urlChars.count {
        if urlChars[i] != " "{
            result[pointer] =  urlChars[i]
            pointer += 1
        } else {
            result[pointer] = "%"
            result[pointer+1] = "2"
            result[pointer+2] = "0"
            pointer += 3
        }
    }

    return String(result)
}

dump(urlify("My Home Page  ", length: 16)) // "My%20Home%20Page"
