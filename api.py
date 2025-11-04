import http.client

conn = http.client.HTTPSConnection("inboxes-com.p.rapidapi.com")

headers = {
    'x-rapidapi-key': "bfc8e325bbmsh43c767b33029b50p1f8e92jsn695a8ea52a1b",
    'x-rapidapi-host': "inboxes-com.p.rapidapi.com"
}

conn.request("GET", "/domains", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))