$:.unshift "."
require 'spec_helper'

require 'rdf/spec/repository'
require 'rdf/mongo'

describe RDF::Mongo::Repository do
  before :each do
    @load_durable = lambda {RDF::Mongo::Repository.new uri: "mongodb://localhost:27017/quadb/quads"}
    @repository = @load_durable.call
    @repository.coll.drop
  end
 
  after :each do
    @repository.coll.drop
  end

  # @see lib/rdf/spec/repository.rb in RDF-spec
  it_behaves_like "an RDF::Repository" do
    let(:repository) {@repository}
  end

  context "problemantic examples" do
    subject {@repository}
    {
      "Insert key too large to index" => %(
        <http://repository.librario.de/publications/0cbdc7f4-728d-4f85-ab09-01060c7b2922> <http://purl.org/ontology/bibo/abstract> "#{'a' * 1001}" .
      )
    }.each do |name, nt|
      it name do
        expect {subject << RDF::Graph.new << RDF::NTriples::Reader.new(nt)}.not_to raise_error
      end
    end
  end
end

