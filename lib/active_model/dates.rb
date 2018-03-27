module ActiveModel::Dates

  def parse_date(field, attrs)
    day, month, year = attrs["#{field}(1i)"],
                       attrs["#{field}(2i)"],
                       attrs["#{field}(3i)"]

    return nil unless day.present? && month.present? && year.present?
    Time.zone.local(day.to_i, month.to_i, year.to_i).to_date
  end

  def remove_date(field, attrs)
    attrs.except("#{field}(1i)", "#{field}(2i)", "#{field}(3i)")
  end

end
