# frozen_string_literal: true

module Openlayer
  [Openlayer::Internal::Type::BaseModel, *Openlayer::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Openlayer::Internal::AnyHash) } }
  end

  Openlayer::Internal::Util.walk_namespaces(Openlayer::Models).each do |mod|
    case mod
    in Openlayer::Internal::Type::Enum | Openlayer::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Openlayer::Internal::Util.walk_namespaces(Openlayer::Models)
                           .lazy
                           .grep(Openlayer::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  CommitRetrieveParams = Openlayer::Models::CommitRetrieveParams

  Commits = Openlayer::Models::Commits

  InferencePipelineDeleteParams = Openlayer::Models::InferencePipelineDeleteParams

  InferencePipelineRetrieveParams = Openlayer::Models::InferencePipelineRetrieveParams

  InferencePipelines = Openlayer::Models::InferencePipelines

  InferencePipelineUpdateParams = Openlayer::Models::InferencePipelineUpdateParams

  ProjectCreateParams = Openlayer::Models::ProjectCreateParams

  ProjectListParams = Openlayer::Models::ProjectListParams

  Projects = Openlayer::Models::Projects

  Storage = Openlayer::Models::Storage

  TestEvaluateParams = Openlayer::Models::TestEvaluateParams

  TestListResultsParams = Openlayer::Models::TestListResultsParams

  WorkspaceRetrieveParams = Openlayer::Models::WorkspaceRetrieveParams

  Workspaces = Openlayer::Models::Workspaces

  WorkspaceUpdateParams = Openlayer::Models::WorkspaceUpdateParams
end
