namespace :db do
  desc "Add rank to operations"
  task :add_rank => :environment do
    documents = Document.all

    documents.each do |document|
      rank = 0
      document.operations.each do |operation|
        rank += 1
        operation.rank = rank
        operation.save
      end
    end
  end
end