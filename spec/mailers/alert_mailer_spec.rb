require "spec_helper"

describe AlertMailer do
  describe "alert_mail" do
    let(:mail) { AlertMailer.alert_mail }

    it "renders the headers" do
      mail.subject.should eq("Alert mail")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
