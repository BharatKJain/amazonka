{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.IotTwinMaker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.IotTwinMaker where

import Amazonka.IotTwinMaker
import qualified Data.Proxy as Proxy
import Test.Amazonka.Fixture
import Test.Amazonka.IotTwinMaker.Internal
import Test.Amazonka.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestBatchPutPropertyValues $
--             newBatchPutPropertyValues
--
--         , requestCreateComponentType $
--             newCreateComponentType
--
--         , requestCreateEntity $
--             newCreateEntity
--
--         , requestCreateScene $
--             newCreateScene
--
--         , requestCreateWorkspace $
--             newCreateWorkspace
--
--         , requestDeleteComponentType $
--             newDeleteComponentType
--
--         , requestDeleteEntity $
--             newDeleteEntity
--
--         , requestDeleteScene $
--             newDeleteScene
--
--         , requestDeleteWorkspace $
--             newDeleteWorkspace
--
--         , requestGetComponentType $
--             newGetComponentType
--
--         , requestGetEntity $
--             newGetEntity
--
--         , requestGetPropertyValue $
--             newGetPropertyValue
--
--         , requestGetPropertyValueHistory $
--             newGetPropertyValueHistory
--
--         , requestGetScene $
--             newGetScene
--
--         , requestGetWorkspace $
--             newGetWorkspace
--
--         , requestListComponentTypes $
--             newListComponentTypes
--
--         , requestListEntities $
--             newListEntities
--
--         , requestListScenes $
--             newListScenes
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestListWorkspaces $
--             newListWorkspaces
--
--         , requestTagResource $
--             newTagResource
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestUpdateComponentType $
--             newUpdateComponentType
--
--         , requestUpdateEntity $
--             newUpdateEntity
--
--         , requestUpdateScene $
--             newUpdateScene
--
--         , requestUpdateWorkspace $
--             newUpdateWorkspace
--
--           ]

--     , testGroup "response"
--         [ responseBatchPutPropertyValues $
--             newBatchPutPropertyValuesResponse
--
--         , responseCreateComponentType $
--             newCreateComponentTypeResponse
--
--         , responseCreateEntity $
--             newCreateEntityResponse
--
--         , responseCreateScene $
--             newCreateSceneResponse
--
--         , responseCreateWorkspace $
--             newCreateWorkspaceResponse
--
--         , responseDeleteComponentType $
--             newDeleteComponentTypeResponse
--
--         , responseDeleteEntity $
--             newDeleteEntityResponse
--
--         , responseDeleteScene $
--             newDeleteSceneResponse
--
--         , responseDeleteWorkspace $
--             newDeleteWorkspaceResponse
--
--         , responseGetComponentType $
--             newGetComponentTypeResponse
--
--         , responseGetEntity $
--             newGetEntityResponse
--
--         , responseGetPropertyValue $
--             newGetPropertyValueResponse
--
--         , responseGetPropertyValueHistory $
--             newGetPropertyValueHistoryResponse
--
--         , responseGetScene $
--             newGetSceneResponse
--
--         , responseGetWorkspace $
--             newGetWorkspaceResponse
--
--         , responseListComponentTypes $
--             newListComponentTypesResponse
--
--         , responseListEntities $
--             newListEntitiesResponse
--
--         , responseListScenes $
--             newListScenesResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseListWorkspaces $
--             newListWorkspacesResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseUpdateComponentType $
--             newUpdateComponentTypeResponse
--
--         , responseUpdateEntity $
--             newUpdateEntityResponse
--
--         , responseUpdateScene $
--             newUpdateSceneResponse
--
--         , responseUpdateWorkspace $
--             newUpdateWorkspaceResponse
--
--           ]
--     ]

-- Requests

requestBatchPutPropertyValues :: BatchPutPropertyValues -> TestTree
requestBatchPutPropertyValues =
  req
    "BatchPutPropertyValues"
    "fixture/BatchPutPropertyValues.yaml"

requestCreateComponentType :: CreateComponentType -> TestTree
requestCreateComponentType =
  req
    "CreateComponentType"
    "fixture/CreateComponentType.yaml"

requestCreateEntity :: CreateEntity -> TestTree
requestCreateEntity =
  req
    "CreateEntity"
    "fixture/CreateEntity.yaml"

requestCreateScene :: CreateScene -> TestTree
requestCreateScene =
  req
    "CreateScene"
    "fixture/CreateScene.yaml"

requestCreateWorkspace :: CreateWorkspace -> TestTree
requestCreateWorkspace =
  req
    "CreateWorkspace"
    "fixture/CreateWorkspace.yaml"

requestDeleteComponentType :: DeleteComponentType -> TestTree
requestDeleteComponentType =
  req
    "DeleteComponentType"
    "fixture/DeleteComponentType.yaml"

requestDeleteEntity :: DeleteEntity -> TestTree
requestDeleteEntity =
  req
    "DeleteEntity"
    "fixture/DeleteEntity.yaml"

requestDeleteScene :: DeleteScene -> TestTree
requestDeleteScene =
  req
    "DeleteScene"
    "fixture/DeleteScene.yaml"

requestDeleteWorkspace :: DeleteWorkspace -> TestTree
requestDeleteWorkspace =
  req
    "DeleteWorkspace"
    "fixture/DeleteWorkspace.yaml"

requestGetComponentType :: GetComponentType -> TestTree
requestGetComponentType =
  req
    "GetComponentType"
    "fixture/GetComponentType.yaml"

requestGetEntity :: GetEntity -> TestTree
requestGetEntity =
  req
    "GetEntity"
    "fixture/GetEntity.yaml"

requestGetPropertyValue :: GetPropertyValue -> TestTree
requestGetPropertyValue =
  req
    "GetPropertyValue"
    "fixture/GetPropertyValue.yaml"

requestGetPropertyValueHistory :: GetPropertyValueHistory -> TestTree
requestGetPropertyValueHistory =
  req
    "GetPropertyValueHistory"
    "fixture/GetPropertyValueHistory.yaml"

requestGetScene :: GetScene -> TestTree
requestGetScene =
  req
    "GetScene"
    "fixture/GetScene.yaml"

requestGetWorkspace :: GetWorkspace -> TestTree
requestGetWorkspace =
  req
    "GetWorkspace"
    "fixture/GetWorkspace.yaml"

requestListComponentTypes :: ListComponentTypes -> TestTree
requestListComponentTypes =
  req
    "ListComponentTypes"
    "fixture/ListComponentTypes.yaml"

requestListEntities :: ListEntities -> TestTree
requestListEntities =
  req
    "ListEntities"
    "fixture/ListEntities.yaml"

requestListScenes :: ListScenes -> TestTree
requestListScenes =
  req
    "ListScenes"
    "fixture/ListScenes.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestListWorkspaces :: ListWorkspaces -> TestTree
requestListWorkspaces =
  req
    "ListWorkspaces"
    "fixture/ListWorkspaces.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestUpdateComponentType :: UpdateComponentType -> TestTree
requestUpdateComponentType =
  req
    "UpdateComponentType"
    "fixture/UpdateComponentType.yaml"

requestUpdateEntity :: UpdateEntity -> TestTree
requestUpdateEntity =
  req
    "UpdateEntity"
    "fixture/UpdateEntity.yaml"

requestUpdateScene :: UpdateScene -> TestTree
requestUpdateScene =
  req
    "UpdateScene"
    "fixture/UpdateScene.yaml"

requestUpdateWorkspace :: UpdateWorkspace -> TestTree
requestUpdateWorkspace =
  req
    "UpdateWorkspace"
    "fixture/UpdateWorkspace.yaml"

-- Responses

responseBatchPutPropertyValues :: BatchPutPropertyValuesResponse -> TestTree
responseBatchPutPropertyValues =
  res
    "BatchPutPropertyValuesResponse"
    "fixture/BatchPutPropertyValuesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy BatchPutPropertyValues)

responseCreateComponentType :: CreateComponentTypeResponse -> TestTree
responseCreateComponentType =
  res
    "CreateComponentTypeResponse"
    "fixture/CreateComponentTypeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateComponentType)

responseCreateEntity :: CreateEntityResponse -> TestTree
responseCreateEntity =
  res
    "CreateEntityResponse"
    "fixture/CreateEntityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateEntity)

responseCreateScene :: CreateSceneResponse -> TestTree
responseCreateScene =
  res
    "CreateSceneResponse"
    "fixture/CreateSceneResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateScene)

responseCreateWorkspace :: CreateWorkspaceResponse -> TestTree
responseCreateWorkspace =
  res
    "CreateWorkspaceResponse"
    "fixture/CreateWorkspaceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateWorkspace)

responseDeleteComponentType :: DeleteComponentTypeResponse -> TestTree
responseDeleteComponentType =
  res
    "DeleteComponentTypeResponse"
    "fixture/DeleteComponentTypeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteComponentType)

responseDeleteEntity :: DeleteEntityResponse -> TestTree
responseDeleteEntity =
  res
    "DeleteEntityResponse"
    "fixture/DeleteEntityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteEntity)

responseDeleteScene :: DeleteSceneResponse -> TestTree
responseDeleteScene =
  res
    "DeleteSceneResponse"
    "fixture/DeleteSceneResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteScene)

responseDeleteWorkspace :: DeleteWorkspaceResponse -> TestTree
responseDeleteWorkspace =
  res
    "DeleteWorkspaceResponse"
    "fixture/DeleteWorkspaceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteWorkspace)

responseGetComponentType :: GetComponentTypeResponse -> TestTree
responseGetComponentType =
  res
    "GetComponentTypeResponse"
    "fixture/GetComponentTypeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetComponentType)

responseGetEntity :: GetEntityResponse -> TestTree
responseGetEntity =
  res
    "GetEntityResponse"
    "fixture/GetEntityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetEntity)

responseGetPropertyValue :: GetPropertyValueResponse -> TestTree
responseGetPropertyValue =
  res
    "GetPropertyValueResponse"
    "fixture/GetPropertyValueResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetPropertyValue)

responseGetPropertyValueHistory :: GetPropertyValueHistoryResponse -> TestTree
responseGetPropertyValueHistory =
  res
    "GetPropertyValueHistoryResponse"
    "fixture/GetPropertyValueHistoryResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetPropertyValueHistory)

responseGetScene :: GetSceneResponse -> TestTree
responseGetScene =
  res
    "GetSceneResponse"
    "fixture/GetSceneResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetScene)

responseGetWorkspace :: GetWorkspaceResponse -> TestTree
responseGetWorkspace =
  res
    "GetWorkspaceResponse"
    "fixture/GetWorkspaceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetWorkspace)

responseListComponentTypes :: ListComponentTypesResponse -> TestTree
responseListComponentTypes =
  res
    "ListComponentTypesResponse"
    "fixture/ListComponentTypesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListComponentTypes)

responseListEntities :: ListEntitiesResponse -> TestTree
responseListEntities =
  res
    "ListEntitiesResponse"
    "fixture/ListEntitiesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListEntities)

responseListScenes :: ListScenesResponse -> TestTree
responseListScenes =
  res
    "ListScenesResponse"
    "fixture/ListScenesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListScenes)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseListWorkspaces :: ListWorkspacesResponse -> TestTree
responseListWorkspaces =
  res
    "ListWorkspacesResponse"
    "fixture/ListWorkspacesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListWorkspaces)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy TagResource)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UntagResource)

responseUpdateComponentType :: UpdateComponentTypeResponse -> TestTree
responseUpdateComponentType =
  res
    "UpdateComponentTypeResponse"
    "fixture/UpdateComponentTypeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateComponentType)

responseUpdateEntity :: UpdateEntityResponse -> TestTree
responseUpdateEntity =
  res
    "UpdateEntityResponse"
    "fixture/UpdateEntityResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateEntity)

responseUpdateScene :: UpdateSceneResponse -> TestTree
responseUpdateScene =
  res
    "UpdateSceneResponse"
    "fixture/UpdateSceneResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateScene)

responseUpdateWorkspace :: UpdateWorkspaceResponse -> TestTree
responseUpdateWorkspace =
  res
    "UpdateWorkspaceResponse"
    "fixture/UpdateWorkspaceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateWorkspace)
