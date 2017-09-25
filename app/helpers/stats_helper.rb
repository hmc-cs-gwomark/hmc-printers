module StatsHelper
  def stats_make(id,status,issue)
    @st = Stat.create(:ids => id,:status=>status,:issue=>issue)
    @st.save
    #Printer.remove(:ids=>"sup",:name=>"sup",:status=>"hello",:issue=>"yes")
    p "something tried"
  end
end
