module Serializers
  module MemberGroup
    class MembersGroupSerializer < Serializers::SupportSerializer

      attrs :id, :id_group, :admin, :membergrouptable_id, :accept, :member

      delegate :id, to: :object

    def member
      tmp = Serializers::User::MiniUsersSerializer.new(object: object.membergrouptable).serializer
    end
    end
  end
end