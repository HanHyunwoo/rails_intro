class HomeController < ApplicationController
  #하나의 액션
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
    @name = params[:name]
  end

  def google
  end

  def game
  end

  def gameresult
    #크롤링 로직
    require 'httparty'
    require 'nokogiri'

    url = "https://pubg.op.gg/user/" + params[:username]
    doc = HTTParty.get(url)
    html = Nokogiri::HTML(doc.body)
    @result = html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
    @result = @result.attr('data-ago-date').value
  end

  def newGame
  end

  def newGameresult
    @result = 2018 - params[:username].to_i + 1

    @img =(2..4).to_a.sample
    @img.to_s + '.png'

    @username = params[:username]



    # map = {agumon: "agumon.png", gabumon: "gabumon.png", gomamon: "gomamon.png", guilmon: "guilmon.png", parumon: "parumon.png", patamon: "patamon.png", piyomon: "piyomon.png", tailmon: "tailmon.png", tentomon: "tentomon.png", terriermon: "terriermon.png"}
    # monsterName = {agumon: "아구몬", gabumon: "파피몬", gomamon: "쉬라몬", guilmon: "길몬", parumon: "팔몬", patamon: "파닥몬", piyomon: "피요몬", tailmon: "가트몬", tentomon: "텐타몬", terriermon: "테리어몬"}
    # @name = params[:username]
    # @result = digi.sample
    # @img = map[@result]
    # @mon = monsterName[@result]


    if (@result >=30)
      @Ages = 30;
      @match

    if (@result >= 20)
      @Ages = 20;
    else
      @Ages = '묻지마'
    end

  end


end
