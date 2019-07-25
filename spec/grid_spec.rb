require_relative "../tic-tac-toe/lib/grid.rb"
require_relative "spec_helper.rb"

RSpec.describe Grid do
  subject { Grid.new }

  describe '#new' do
    it 'works' do
      result = Grid.new
      expect(result).not_to be_nil
    end
  end
  describe '#put_piece' do
    it 'works' do
      grid = Grid.new
      dbl=double("Put_piece", :index=>3, :symb =>'x')
      result=grid.put_piece(dbl.index, dbl.symb)
      expect(result).not_to be_nil
    end
  end
  describe '#finished?' do
    it 'returns true if all marks on the main diagonal  are (X)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'x')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>5, :symb =>'x')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>9, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end

    it 'returns true if all marks on the main diagonal are (O)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>5, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>9, :symb =>'o')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end

    it 'returns true if all marks on the secondary diagonal  are (X)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'x')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>5, :symb =>'x')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>9, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end

    it 'returns true if all marks on the secondary diagonal are (O)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>5, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>9, :symb =>'o')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end

    it 'returns true if all the top marks are (X)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'x')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'x')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end
    it 'returns true if all the top marks are (O)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'o')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end
    it 'returns true if all the middle marks are (X)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'x')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'x')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end
    it 'returns true if all the middle marks are (O)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'o')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end
    it 'returns true if all the bottom marks are (X)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'x')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'x')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end

    it 'returns true if all the bottom marks are (O)s' do
      grid = Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'o')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      result = grid.finished?
      expect(result).to be true
    end
  end
  describe '#full?' do
    it "it returns true if the grid is full" do
      grid =Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      dbl4=double("Put_piece", :index=>4, :symb =>'x')
      result4=grid.put_piece(dbl4.index.to_i - 1, dbl4.symb)

      dbl5=double("Put_piece", :index=>5, :symb =>'o')
      result5=grid.put_piece(dbl5.index.to_i - 1, dbl5.symb)

      dbl6=double("Put_piece", :index=>6, :symb =>'o')
      result6=grid.put_piece(dbl6.index.to_i - 1, dbl6.symb)

      dbl7=double("Put_piece", :index=>7, :symb =>'x')
      result7=grid.put_piece(dbl7.index.to_i - 1, dbl7.symb)

      dbl8=double("Put_piece", :index=>8, :symb =>'x')
      result8=grid.put_piece(dbl8.index.to_i - 1, dbl8.symb)

      dbl9=double("Put_piece", :index=>9, :symb =>'0')
      result9=grid.put_piece(dbl9.index.to_i - 1, dbl9.symb)

      result = grid.full?
      expect(result).to be true
    end

    it "it returns true if the grid is full" do
      grid =Grid.new
      dbl1=double("Put_piece", :index=>1, :symb =>'o')
      result1=grid.put_piece(dbl1.index.to_i - 1, dbl1.symb)

      dbl2=double("Put_piece", :index=>2, :symb =>'o')
      result2=grid.put_piece(dbl2.index.to_i - 1, dbl2.symb)

      dbl3=double("Put_piece", :index=>3, :symb =>'x')
      result3=grid.put_piece(dbl3.index.to_i - 1, dbl3.symb)

      dbl4=double("Put_piece", :index=>4, :symb =>'x')
      result4=grid.put_piece(dbl4.index.to_i - 1, dbl4.symb)

      dbl5=double("Put_piece", :index=>5, :symb =>'o')
      result5=grid.put_piece(dbl5.index.to_i - 1, dbl5.symb)

      result = grid.full?
      expect(result).to be false
    end
  end

end

