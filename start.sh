import Foundation

let headers = [
	"x-rapidapi-key": "bfc8e325bbmsh43c767b33029b50p1f8e92jsn695a8ea52a1b",
	"x-rapidapi-host": "inboxes-com.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://inboxes-com.p.rapidapi.com/domains")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
	if (error != nil) {
		print(error as Any)
	} else {
		let httpResponse = response as? HTTPURLResponse
		print(httpResponse)
	}
})

dataTask.resume()
