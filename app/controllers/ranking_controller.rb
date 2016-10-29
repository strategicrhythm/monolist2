class RankingController < ApplicationController
  def have
    @items = Item.joins(:have_users).group('items.id').order("COUNT(users.id) DESC").limit(10)
  end
  
  def want
    @items = Item.joins(:want_users).group('items.id').order("COUNT(users.id) DESC").limit(10)
  end
  
end