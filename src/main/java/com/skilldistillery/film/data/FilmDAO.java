package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;


public interface FilmDAO {
	  public Film findFilmById(int filmId) throws SQLException;
	  public Actor findActorById(int actorId) throws SQLException;
	  public List<Actor> findActorsByFilmId(int filmId) throws SQLException;
	  public List<Film> findFilmsBySearchWord(String searchWord) throws SQLException;
	  
	  public List<Film> findFilmsByActorId();
	  public Film createFilm(Film film);
	  public Film updateFilm(Film film, int filmId) throws SQLException;
	  public boolean deleteFilm(Film film);
}
