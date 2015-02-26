# -*- coding : utf-8 -*-
require 'spec_helper'

describe Pebbles::Roconize do
  it 'has a version number' do
    expect(Pebbles::Roconize::VERSION).not_to be nil
  end

  it 'Object#roconizeが定義されている' do
    expect(Object.new).to respond_to(:roconize)
  end

  it 'Object#deroconizeが定義されている' do
    expect(Object.new).to respond_to(:deroconize)
  end

  it 'Object#roconized?が定義されている' do
    expect(Object.new).to respond_to(:roconized?)
  end

  it 'Objectは生成時、ロコナイズされていない' do
    expect(Object.new).not_to be_roconized
  end

  it 'Object#roconizeは、レシーバをロコナイズする' do
    obj = Object.new
    obj.roconize
    expect(obj).to be_roconized
  end

  it 'Object#deroconizeは、レシーバをデロコナイズする' do
    obj = Object.new
    obj.roconize
    obj.deroconize
    expect(obj).not_to be_roconized
  end

end
