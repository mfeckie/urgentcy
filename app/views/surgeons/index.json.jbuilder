json.array!(@surgeons) do |surgeon|
  json.extract! surgeon, :first_name, :last_name, :telephone_number, :mobile_number, :pager
end
