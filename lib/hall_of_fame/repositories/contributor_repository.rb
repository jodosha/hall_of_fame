class ContributorRepository < Hanami::Repository
  def listing
    contributors.order { commits_count.desc }
  end
end
