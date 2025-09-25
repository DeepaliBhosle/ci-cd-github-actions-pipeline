from flask import Flask, jsonify
app=Flask(_name_)
@app.route('/')
def inde():
return jsonify(message='Hello, World!')
