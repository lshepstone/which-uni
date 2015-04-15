describe 'User executes the "which-uni" command' do
  context 'with search results and a working link for the first result' do
    before { run_simple 'which-uni' }

    it 'returns successfully' do
      expect(last_exit_status).to eql(0)
    end

    it 'shows the version number for the tool' do
      expect(all_output).to include(WhichUni::VERSION)
    end

    it 'shows the search phrase used' do
      expect(all_output).to include('which university')
    end

    it 'shows the URL for the page of the first result' do
      expect(all_output).to include('http://university.which.co.uk')
    end

    it 'shows the page title for the page of the first result' do
      expect(all_output).to include('Which? University - find the best university & degree course')
    end
  end
end
