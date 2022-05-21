import numpy as np
import pandas as pd
import ast
import nltk
from flask import Flask,jsonify, request
from flask_cors import CORS
from nltk.stem.porter import PorterStemmer
from sklearn.preprocessing import MinMaxScaler 
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity

app =Flask(__name__)
CORS(app)

@app.route('/movie',methods =['GET'])
def recommend_movies():
        movies=pd.read_csv('movies.csv')
        credits=pd.read_csv('credits.csv')
        newfile=movies.merge(credits,on='title')
        newfile = newfile[['movie_id','title','overview','genres','keywords','cast','crew']]
        def convert(obj):
            l=[]
            for i in ast.literal_eval(obj):
                l.append(i['name'])
        newfile['genres']=newfile['genres'].apply(convert)
        newfile['keywords']=newfile['keywords'].apply(convert)
        def convert3(text):
            L = []
            counter = 0
            for i in ast.literal_eval(text):
                if counter < 3:
                    L.append(i['name'])
                counter+=1
        newfile['cast'] = newfile['cast'].apply(convert3)
        def fetch_director(text):
            L = []
            for i in ast.literal_eval(text):
                if i['job'] == 'Director':
                    L.append(i['name']) 
        newfile['crew']=newfile['crew'].apply(fetch_director)
        newfile['tags']=newfile['overview']+newfile['genres']+newfile['keywords']+newfile['cast']+newfile['crew']
        newdf=newfile[['movie_id','title','tags']]
        newdf['tags']=newfile['tags'].apply(lambda x: " ".join) 
        newdf['tags']=newfile['tags'].lower()
        ps= PorterStemmer()
        def stem(text):
            y=[]
            for i in text.split():
                y.append(ps.stem(i))
        newdf['tags']=newdf['tags'].apply(stem)
        cv=CountVectorizer(max_features=5000, stop_words='english')
        vectors=cv.fit_transform(newdf['tags']).toarray()
        cv.get_feature_names()
        similarity =cosine_similarity(vectors)
        def recommend(movie):
            movie_index= newdf[newdf['title']==movie].index[0]
            distances=similarity[movie_index]
            movies_list=sorted(list(enumerate(distances)), reverse=True, key=lambda x:x[1])[1:6]
            for i in movies_list:
                print (newdf.iloc[i[0]].title)
        user_input = request.get_json()
        moviename = user_input['title']

        recommended_shows_dict = recommend(moviename)
        return jsonify(recommended_shows_dict)


if __name__=='__main__':
    app.run(port=5000, debug = True)
