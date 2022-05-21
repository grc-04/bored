import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from http.client import OK
from flask import Flask, request, jsonify
from flask_restful import Api, Resource
from sklearn.preprocessing import MinMaxScaler 
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity


app = Flask(__name__)
api = Api(app)

class PopularMovies(Resource):
    def get(self):
        movies=pd.read_csv('movies.csv')
        credits=pd.read_csv('credits.csv')
        credits_column_renamed = credits.rename(index=str, columns={"movie_id": "id"})
        movies_merge = movies.merge(credits_column_renamed, on = 'id')
        movies_cleaned = movies_merge.drop(columns =['homepage', 'title_x', 'title_y', 'status', 'production_countries'])
        v=movies_cleaned['vote_count']
        R=movies_cleaned['vote_average']
        C=movies_cleaned['vote_average'].mean()
        m=movies_cleaned['vote_count'].quantile(0.70)
        movies_cleaned['weighted_average']=((R*v)+(C*m))/(v+m)
        movie_sorted_ranking=movies_cleaned.sort_values('weighted_average', ascending=False)
        scaling=MinMaxScaler()
        movie_scaled=scaling.fit_transform(movies_cleaned[['weighted_average','popularity']])
        movie_normalized=pd .DataFrame(movie_scaled, columns=[['weighted_average','popularity']])
        movies_cleaned[['normalized_weight_average', 'normalized_popularity']]= movie_normalized
        movies_cleaned['score']= movies_cleaned['normalized_weight_average']*0.5 + movies_cleaned['normalized_popularity']*0.5
        movies_scored=movies_cleaned.sort_values(['score'], ascending=False)
        data=movies_scored[['original_title', 'normalized_weight_average', 'normalized_popularity', 'score']].to_dict()
        return{'data' : data['original_title']}, 200 

api.add_resource(PopularMovies, '/popmovies')


if __name__ == "__main__":
    app.run(debug=True)