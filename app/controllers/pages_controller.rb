class PagesController < ApplicationController
  def home
    @sermon = Sermon.includes(:sermon_sections).last
    @sermon_sections = @sermon.sermon_sections
  end
end
