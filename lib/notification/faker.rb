require "notification/faker/version"

module Notification
  module Faker
  class NotificationFaker
    def initialize
      @member_id = Faker::Bitcoin.address
      @app_name = Faker::Lorem.word
      @short_title = Faker::Lorem.word
      @short_body = Faker::Lorem.sentence
      @device_id = Faker::Code.ean
    end

    def member_id
      @member_id
    end

    def app_name
      @app_name
    end

    def short_title
      @short_title
    end

    def short_body
      @short_body
    end

    def device_id
      @device_id
    end

    def new_notification
      params = {
              'member_id' => @member_id,
	      'app_name' => @app_name,
              'short_title' => @short_title,
	      'short_body' => @short_body
             }
    end

    def new_registration
      params = {
              'member_id' => @member_id,
              'app_name' => @app_name,
              'device_id'=> @device_id
      }
    end

    def get_notification
      {'member_id' => @member_id, 'app_name' => @app_name}
    end

    def get_subscription
      {'member_id' => @member_id, 'app_name' => @app_name}
    end

    def upsert_subscription
      params = {
              'member_id' => @member_id,
              'app_name' => @app_name,
              'channels' => 'push'
      }
    end
  end
