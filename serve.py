#!/usr/bin/env python



import os
import binascii
from flask import Flask, render_template,session, request, flash



app = Flask(__name__)
app.secret_key = "0123456789abcdef"


@app.route('/',methods=['GET'])
def entry():
    return render_template('index.html')


@app.route('/upload',methods=['POST'])
def discard():
    x = request.form
    print len(x['data'])
    return "{ 'ok': 'ok' }"


## User pressed 'login' or 'logout'
#@app.route('/',method='POST')





if __name__ == '__main__':
    app.run(  debug = True, 
              host = 'localhost',
              port = 5050 )

 


