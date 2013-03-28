# coding: utf-8
class FeedbackFormMailer < ActionMailer::Base
  def feedback(body, sender, theme)
    @body, @sender, @theme =  body, sender, theme
    text = ""
    if sender && !sender.blank?
      text += "#{I18n.t('feedback_mailer.email_to_answer')}: #{sender}

      "
    end
    text += body
    mail(
      :from => FeedbackMailer.mail_from, :to => FeedbackMailer.mail_to,
      :subject => "#{I18n.t('feedback_mailer.letter_from_site')} #{FeedbackMailer.site_host}: #{theme}"
    ) do |format|
      format.text { render :text => text }
    end
  end
end
