# frozen_string_literal: true

RSpec.describe(Jekyll::Compose::ArgParser) do

  let(:args){["es/abc-def"]}
  let(:options){{}}
  let(:config){{"path_template" => "{lang}/{name}"}}
  subject do
    Jekyll::Compose::ArgParser.new(
      args,
      options,
      config
    )
  end
  it "can use a path_template to extract values from args" do
    expect(subject.lang).to eql("es")
    expect(subject.title).to eql("abc-def")
  end

end
