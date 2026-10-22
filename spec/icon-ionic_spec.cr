require "./spec_helper"

describe Icon::Ionic do
  it "provides every generated image" do
    {% for constant in Icon::Ionic.constants %}
      Icon::Ionic::{{ constant.id }}.bounds.width.should be > 0
      Icon::Ionic::{{ constant.id }}.bounds.height.should be > 0
    {% end %}
    {{ Icon::Ionic.constants.size }}.should eq(2714)
  end

  it "exposes the documented variants with correct dimensions" do
    Icon::Ionic::Heart24Filled.bounds.width.should eq(24)
    Icon::Ionic::Heart32Outline.bounds.height.should eq(32)
    Icon::Ionic::Heart24Filled.at(0, 0).rgba[3].should eq(0)
  end
end
