class AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.order('created_at DESC')
  end
end
