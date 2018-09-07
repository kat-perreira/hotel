require_relative 'spec_helper.rb'

describe 'BookingManager' do

  let (:sample_booking) {
    BookingManager.new
  }

  let (:sample_checkin) {
    Date.new(2001,3,1)
  }

  let (:sample_checkout) {
    Date.new(2001,3,5)
  }

  describe '#initialize' do

    it 'must create an array of 20 room hashes when created' do
      expect(sample_booking.rooms).must_be_kind_of  Array
      expect(sample_booking.rooms.length).must_equal 20
      expect(sample_booking.rooms[0]).must_be_kind_of Hash

    end
  end

  describe "#find_room" do
    # check info within the reservations array
    it 'must return a valid room number' do
      expect(sample_booking.find_room).must_be_kind_of Integer# 4 nithgs from 1st to 5th
    end

    it 'must equal a number greater than 0' do
      expect(sample_booking.find_room).must_be :>, 0
    end

    it 'must equal a number less than 21' do
      expect(sample_booking.find_room).must_be :<, 21
    end

  end

end
