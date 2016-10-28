class RankingController < ApplicationController
  def have
    @items = Item.joins(:have_users).group('items.id').order("COUNT(users.id) DESC").limit(10)
  end
  
  def want
    @items = Item.all.order("updated_at DESC").limit(10)
  end
end
