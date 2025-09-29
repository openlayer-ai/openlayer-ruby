# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Commits::TestResultsTest < Openlayer::Test::ResourceTest
  def test_list
    response = @openlayer.commits.test_results.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Commits::TestResultListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Commits::TestResultListResponse::Item])
      }
    end
  end
end
