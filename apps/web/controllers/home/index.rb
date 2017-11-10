module Web::Controllers::Home
  class Index
    include Web::Action
    expose :contributors

    def call(*)
      @contributors = ContributorRepository.new.listing
    end
  end
end
