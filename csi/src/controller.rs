use std::collections::HashMap;

use tonic::{Request, Response, Status};

use crate::csi::{
    controller_service_capability, ControllerExpandVolumeRequest, ControllerExpandVolumeResponse,
    ControllerGetCapabilitiesRequest, ControllerGetCapabilitiesResponse,
    ControllerGetVolumeRequest, ControllerGetVolumeResponse, ControllerModifyVolumeRequest,
    ControllerModifyVolumeResponse, ControllerPublishVolumeRequest,
    ControllerPublishVolumeResponse, ControllerServiceCapability, ControllerUnpublishVolumeRequest,
    ControllerUnpublishVolumeResponse, CreateSnapshotRequest, CreateSnapshotResponse,
    CreateVolumeRequest, CreateVolumeResponse, DeleteSnapshotRequest, DeleteSnapshotResponse,
    DeleteVolumeRequest, DeleteVolumeResponse, GetCapacityRequest, GetCapacityResponse,
    ListSnapshotsRequest, ListSnapshotsResponse, ListVolumesRequest, ListVolumesResponse,
    ValidateVolumeCapabilitiesRequest, ValidateVolumeCapabilitiesResponse,
};

#[derive(Debug)]
pub struct Controller {}

#[tonic::async_trait]
impl super::csi::controller_server::Controller for Controller {
    async fn create_volume(
        &self,
        _: Request<CreateVolumeRequest>,
    ) -> Result<Response<CreateVolumeResponse>, Status> {
        Ok(Response::new(CreateVolumeResponse { volume: None }))
    }

    async fn delete_volume(
        &self,
        _: Request<DeleteVolumeRequest>,
    ) -> Result<Response<DeleteVolumeResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn controller_publish_volume(
        &self,
        _: Request<ControllerPublishVolumeRequest>,
    ) -> Result<Response<ControllerPublishVolumeResponse>, Status> {
        Ok(Response::new(ControllerPublishVolumeResponse {
            publish_context: HashMap::new(),
        }))
    }

    async fn controller_unpublish_volume(
        &self,
        _: Request<ControllerUnpublishVolumeRequest>,
    ) -> Result<Response<ControllerUnpublishVolumeResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn validate_volume_capabilities(
        &self,
        _: Request<ValidateVolumeCapabilitiesRequest>,
    ) -> Result<Response<ValidateVolumeCapabilitiesResponse>, Status> {
        Ok(Response::new(ValidateVolumeCapabilitiesResponse {
            confirmed: None,
            message: "".to_string(),
        }))
    }

    async fn list_volumes(
        &self,
        _: Request<ListVolumesRequest>,
    ) -> Result<Response<ListVolumesResponse>, Status> {
        Ok(Response::new(ListVolumesResponse {
            entries: vec![],
            next_token: "".to_string(),
        }))
    }

    async fn get_capacity(
        &self,
        _: Request<GetCapacityRequest>,
    ) -> Result<Response<GetCapacityResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn controller_get_capabilities(
        &self,
        _: Request<ControllerGetCapabilitiesRequest>,
    ) -> Result<Response<ControllerGetCapabilitiesResponse>, Status> {
        Ok(Response::new(ControllerGetCapabilitiesResponse {
            capabilities: vec![
                ControllerServiceCapability {
                    r#type: Some(controller_service_capability::Type::Rpc(
                        controller_service_capability::Rpc {
                            r#type: controller_service_capability::rpc::Type::ListVolumes.into(),
                        },
                    )),
                },
                ControllerServiceCapability {
                    r#type: Some(controller_service_capability::Type::Rpc(
                        controller_service_capability::Rpc {
                            r#type: controller_service_capability::rpc::Type::GetVolume.into(),
                        },
                    )),
                },
                ControllerServiceCapability {
                    r#type: Some(controller_service_capability::Type::Rpc(
                        controller_service_capability::Rpc {
                            r#type: controller_service_capability::rpc::Type::VolumeCondition
                                .into(),
                        },
                    )),
                },
                ControllerServiceCapability {
                    r#type: Some(controller_service_capability::Type::Rpc(
                        controller_service_capability::Rpc {
                            r#type: controller_service_capability::rpc::Type::CreateDeleteVolume
                                .into(),
                        },
                    )),
                },
            ],
        }))
    }

    async fn create_snapshot(
        &self,
        _: Request<CreateSnapshotRequest>,
    ) -> Result<Response<CreateSnapshotResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn delete_snapshot(
        &self,
        _: Request<DeleteSnapshotRequest>,
    ) -> Result<Response<DeleteSnapshotResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn list_snapshots(
        &self,
        _: Request<ListSnapshotsRequest>,
    ) -> Result<Response<ListSnapshotsResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn controller_expand_volume(
        &self,
        _: Request<ControllerExpandVolumeRequest>,
    ) -> Result<Response<ControllerExpandVolumeResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn controller_get_volume(
        &self,
        _: Request<ControllerGetVolumeRequest>,
    ) -> Result<Response<ControllerGetVolumeResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }

    async fn controller_modify_volume(
        &self,
        _: Request<ControllerModifyVolumeRequest>,
    ) -> Result<Response<ControllerModifyVolumeResponse>, Status> {
        Err(Status::unimplemented("not implemented"))
    }
}
