module ProjectsHelper

  def dueDate(endDate, now)
    if now < endDate
       days = endDate - now
         p  "Your are #{Integer(days)} day(s) Due "
      end
  end
end
