extends CanvasLayer

func _ready():
	pass # Replace with function body.

func _make_post_request(url, data_to_send, use_ssl=false):
	# Convert data to json string:
	var query = JSON.print(data_to_send)
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request(url, headers, use_ssl, HTTPClient.METHOD_GET, query)

func _on_Button_pressed():
	$HTTPRequest.request("http://www.mocky.io/v2/5185415ba171ea3a00704eed")


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.error_string)
	print(json.result)
	print(body.get_string_from_utf8())
	$Label.text = "Result:" + body.get_string_from_utf8()


func _on_Button2_pressed():
	var url = "https://www.bilibili.com"
#	var url = "http://localhost:3000/comments/1"
	_make_post_request(url, {})
