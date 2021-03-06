class Array
  def multiple_timeframes_gaps_left_by(*time_frames)
    raise ArgumentError.new 'You can only use timeframe for this operation' unless [self + time_frames].flatten.all?{|el| el.is_a?(Timeframe)}
    self.inject([]){|a,b| a << b.gaps_left_by(*time_frames)}.flatten
  end
end
