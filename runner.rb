require_relative 'config/environment'

def test
    unsorted = Lend.all.map{ |lend| "lend #{lend[:id]} on #{lend[:start_date]}" }
end

def sort

puts test