# frozen_string_literal: true

# The optional context activity.
# See: https://github.com/adlnet/xAPI-Spec/blob/master/xAPI-Data.md#246-context
class XapiMiddleware::ContextActivity < ApplicationRecord
  belongs_to :context, class_name: "XapiMiddleware::Context"
  belongs_to :object, class_name: "XapiMiddleware::Object"

  validates :activity_type, presence: true, inclusion: {in: ["parent", "grouping", "category", "other"]}

  def type=(value)
    # We store the `type` attribute into `activity_type` column to avoid
    # reserved key-words issues.
    self.activity_type = value
  end
end

# == Schema Information
#
# Table name: xapi_middleware_context_activities
#
#  id            :integer          not null, primary key
#  activity_type :string           not null
#  context_id    :bigint           not null
#  object_id     :string           not null
#
# Indexes
#
#  index_xapi_middleware_context_activities_on_context_id  (context_id)
#  index_xapi_middleware_context_activities_on_object_id   (object_id)
#
