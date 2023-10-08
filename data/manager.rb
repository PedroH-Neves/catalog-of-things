require 'json'
require 'pry'

class Manager
  BOOKS_PATH = './storage/books.json'.freeze
  MUSICS_PATH = './storage/musics.json'.freeze
  GENRES_PATH = './storage/genres.json'.freeze
  AUTHORS_PATH = './storage/authors.json'.freeze
  SOURCES_PATH = './storage/sources.json'.freeze
  LABELS_PATH = './storage/labels.json'.freeze

  attr_accessor :books, :musics, :genres, :authors, :sources, :labels

  def initialize(data = nil)
    @data = data
  end

  def self.save_file(data)
    new(data).save_file
  end

  def save_file
    json_data.each do |item|
      file_path = "./storage/#{item.keys.first}.json"
      File.write(file_path, item.values.first)
    end
  end

  def self.load_books
    obj = parsed_file(BOOKS_PATH)
    deserialize_objects(obj)
  end

  def self.load_musics
    obj = parsed_file(MUSICS_PATH)
    deserialize_objects(obj)
  end

  def self.load_genres
    obj = parsed_file(GENRES_PATH)
    deserialize_objects(obj)
  end

  def self.load_authors
    obj = parsed_file(AUTHORS_PATH)
    deserialize_objects(obj)
  end

  def self.load_sources
    obj = parsed_file(SOURCES_PATH)
    deserialize_objects(obj)
  end

  def self.load_labels
    obj = parsed_file(LABELS_PATH)
    deserialize_objects(obj)
  end

  def self.deserialize_objects(obj_list)
    obj_list.map { |file| Marshal.load(file) }
  end

  def self.parsed_file(path)
    json_file = File.read(path)
    JSON.parse(json_file)
  end

  def json_data
    books = create_json(@data[:books])
    musics = create_json(@data[:musics])
    genres = create_json(@data[:genres])
    authors = create_json(@data[:authors])
    sources = create_json(@data[:sources])
    labels = create_json(@data[:labels])
    [{ books: books }, { musics: musics }, { genres: genres }, { authors: authors }, { sources: sources }, { labels: labels }]
  end

  private

  def create_json(element)
    serialize_objects(element).to_json
  end

  def serialize_objects(obj_list)
    obj_list.map { |obj| Marshal.dump(obj) }
  end
end
