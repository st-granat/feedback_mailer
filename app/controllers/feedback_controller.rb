# coding: utf-8
class FeedbackController < ApplicationController
  before_filter :build_meta_attributes
  caches_page :index

  def index; end

  def create
    @theme = params[:theme].blank? ? I18n.t("feedback_mailer.without_theme") : params[:theme]
    @sender = params[:sender].blank? ? I18n.t("feedback_mailer.without_sender") : params[:sender]
    @body = params[:body].blank? ? "" : params[:body]
    if !@body.blank?
      FeedbackFormMailer.feedback(@theme, @sender, @body).deliver
      flash[:notice] = I18n.t("feedback_mailer.your_letter_sent")
    else
      flash[:error] = I18n.t("feedback_mailer.your_letter_is_not_sent")
    end
    redirect_to after_feedback_path
  end

  protected

  def after_feedback_path
    "/contact"
  end

  def build_meta_attributes
    @meta_title = I18n.t("feedback_mailer.meta_title")
    @meta_description = I18n.t("feedback_mailer.meta_title")
    @meta_keywords = ""
  end
end
