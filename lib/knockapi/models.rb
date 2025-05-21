# frozen_string_literal: true

module Knockapi
  [Knockapi::Internal::Type::BaseModel, *Knockapi::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Knockapi::Internal::AnyHash) } }
  end

  Knockapi::Internal::Util.walk_namespaces(Knockapi::Models).each do |mod|
    case mod
    in Knockapi::Internal::Type::Enum | Knockapi::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, mod) } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, mod) } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, mod) } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, mod) } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Knockapi::Internal::Util.walk_namespaces(Knockapi::Models)
                          .lazy
                          .grep(Knockapi::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Activity = Knockapi::Models::Activity

  AudienceAddMembersParams = Knockapi::Models::AudienceAddMembersParams

  AudienceListMembersParams = Knockapi::Models::AudienceListMembersParams

  AudienceMember = Knockapi::Models::AudienceMember

  AudienceRemoveMembersParams = Knockapi::Models::AudienceRemoveMembersParams

  BulkOperation = Knockapi::Models::BulkOperation

  BulkOperationGetParams = Knockapi::Models::BulkOperationGetParams

  Channels = Knockapi::Models::Channels

  Condition = Knockapi::Models::Condition

  IdentifyUserRequest = Knockapi::Models::IdentifyUserRequest

  InlineIdentifyUserRequest = Knockapi::Models::InlineIdentifyUserRequest

  InlineObjectRequest = Knockapi::Models::InlineObjectRequest

  InlineTenantRequest = Knockapi::Models::InlineTenantRequest

  Integrations = Knockapi::Models::Integrations

  Message = Knockapi::Models::Message

  MessageArchiveParams = Knockapi::Models::MessageArchiveParams

  MessageDeliveryLog = Knockapi::Models::MessageDeliveryLog

  MessageEvent = Knockapi::Models::MessageEvent

  MessageGetContentParams = Knockapi::Models::MessageGetContentParams

  MessageGetParams = Knockapi::Models::MessageGetParams

  MessageListActivitiesParams = Knockapi::Models::MessageListActivitiesParams

  MessageListDeliveryLogsParams = Knockapi::Models::MessageListDeliveryLogsParams

  MessageListEventsParams = Knockapi::Models::MessageListEventsParams

  MessageListParams = Knockapi::Models::MessageListParams

  MessageMarkAsInteractedParams = Knockapi::Models::MessageMarkAsInteractedParams

  MessageMarkAsReadParams = Knockapi::Models::MessageMarkAsReadParams

  MessageMarkAsSeenParams = Knockapi::Models::MessageMarkAsSeenParams

  MessageMarkAsUnreadParams = Knockapi::Models::MessageMarkAsUnreadParams

  MessageMarkAsUnseenParams = Knockapi::Models::MessageMarkAsUnseenParams

  Messages = Knockapi::Models::Messages

  MessageUnarchiveParams = Knockapi::Models::MessageUnarchiveParams

  Object = Knockapi::Models::Object

  ObjectAddSubscriptionsParams = Knockapi::Models::ObjectAddSubscriptionsParams

  ObjectDeleteParams = Knockapi::Models::ObjectDeleteParams

  ObjectDeleteSubscriptionsParams = Knockapi::Models::ObjectDeleteSubscriptionsParams

  ObjectGetChannelDataParams = Knockapi::Models::ObjectGetChannelDataParams

  ObjectGetParams = Knockapi::Models::ObjectGetParams

  ObjectGetPreferencesParams = Knockapi::Models::ObjectGetPreferencesParams

  ObjectListMessagesParams = Knockapi::Models::ObjectListMessagesParams

  ObjectListParams = Knockapi::Models::ObjectListParams

  ObjectListPreferencesParams = Knockapi::Models::ObjectListPreferencesParams

  ObjectListSchedulesParams = Knockapi::Models::ObjectListSchedulesParams

  ObjectListSubscriptionsParams = Knockapi::Models::ObjectListSubscriptionsParams

  Objects = Knockapi::Models::Objects

  ObjectSetChannelDataParams = Knockapi::Models::ObjectSetChannelDataParams

  ObjectSetParams = Knockapi::Models::ObjectSetParams

  ObjectSetPreferencesParams = Knockapi::Models::ObjectSetPreferencesParams

  ObjectUnsetChannelDataParams = Knockapi::Models::ObjectUnsetChannelDataParams

  PageInfo = Knockapi::Models::PageInfo

  Providers = Knockapi::Models::Providers

  Recipient = Knockapi::Models::Recipient

  RecipientReference = Knockapi::Models::RecipientReference

  RecipientRequest = Knockapi::Models::RecipientRequest

  Recipients = Knockapi::Models::Recipients

  Schedule = Knockapi::Models::Schedule

  ScheduleCreateParams = Knockapi::Models::ScheduleCreateParams

  ScheduleDeleteParams = Knockapi::Models::ScheduleDeleteParams

  ScheduleListParams = Knockapi::Models::ScheduleListParams

  ScheduleRepeatRule = Knockapi::Models::ScheduleRepeatRule

  Schedules = Knockapi::Models::Schedules

  ScheduleUpdateParams = Knockapi::Models::ScheduleUpdateParams

  Tenant = Knockapi::Models::Tenant

  TenantDeleteParams = Knockapi::Models::TenantDeleteParams

  TenantGetParams = Knockapi::Models::TenantGetParams

  TenantListParams = Knockapi::Models::TenantListParams

  TenantRequest = Knockapi::Models::TenantRequest

  Tenants = Knockapi::Models::Tenants

  TenantSetParams = Knockapi::Models::TenantSetParams

  User = Knockapi::Models::User

  UserDeleteParams = Knockapi::Models::UserDeleteParams

  UserGetChannelDataParams = Knockapi::Models::UserGetChannelDataParams

  UserGetParams = Knockapi::Models::UserGetParams

  UserGetPreferencesParams = Knockapi::Models::UserGetPreferencesParams

  UserListMessagesParams = Knockapi::Models::UserListMessagesParams

  UserListParams = Knockapi::Models::UserListParams

  UserListPreferencesParams = Knockapi::Models::UserListPreferencesParams

  UserListSchedulesParams = Knockapi::Models::UserListSchedulesParams

  UserListSubscriptionsParams = Knockapi::Models::UserListSubscriptionsParams

  UserMergeParams = Knockapi::Models::UserMergeParams

  Users = Knockapi::Models::Users

  UserSetChannelDataParams = Knockapi::Models::UserSetChannelDataParams

  UserSetPreferencesParams = Knockapi::Models::UserSetPreferencesParams

  UserUnsetChannelDataParams = Knockapi::Models::UserUnsetChannelDataParams

  UserUpdateParams = Knockapi::Models::UserUpdateParams

  WorkflowCancelParams = Knockapi::Models::WorkflowCancelParams

  WorkflowTriggerParams = Knockapi::Models::WorkflowTriggerParams
end
