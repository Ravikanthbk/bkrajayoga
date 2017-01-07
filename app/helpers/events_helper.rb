module EventsHelper
 def display_events_list(events)
   arr = []
   events.each do |event|
     arr << {
          title: event.name,
          start: event.date_from,
          end: event.date_to,
          color: event.color_code
        }
   end 
   arr.to_json
  end	
end
