# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsResponse < Knockapi::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def context_team_id
        end

        sig { params(_: String).returns(String) }
        def context_team_id=(_)
        end

        sig { returns(T::Boolean) }
        def is_im
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_im=(_)
        end

        sig { returns(T::Boolean) }
        def is_private
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_private=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(id: String, context_team_id: String, is_im: T::Boolean, is_private: T::Boolean, name: String)
            .returns(T.attached_class)
        end
        def self.new(id:, context_team_id:, is_im:, is_private:, name:)
        end

        sig do
          override
            .returns({
                       id: String,
                       context_team_id: String,
                       is_im: T::Boolean,
                       is_private: T::Boolean,
                       name: String
                     })
        end
        def to_hash
        end
      end
    end
  end
end
