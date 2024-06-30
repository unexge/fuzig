use tonic::{Request, Response, Status};

use crate::csi::{
    plugin_capability::{self},
    PluginCapability,
};

use super::csi::{
    GetPluginCapabilitiesRequest, GetPluginCapabilitiesResponse, GetPluginInfoRequest,
    GetPluginInfoResponse, ProbeRequest, ProbeResponse,
};

#[derive(Debug)]
pub struct Identity {}

#[tonic::async_trait]
impl super::csi::identity_server::Identity for Identity {
    async fn get_plugin_info(
        &self,
        _: Request<GetPluginInfoRequest>,
    ) -> Result<Response<GetPluginInfoResponse>, Status> {
        Ok(Response::new(GetPluginInfoResponse {
            name: "fuzig".to_string(),
            vendor_version: "0.0.1".to_string(),
            ..Default::default()
        }))
    }

    async fn get_plugin_capabilities(
        &self,
        _: Request<GetPluginCapabilitiesRequest>,
    ) -> Result<Response<GetPluginCapabilitiesResponse>, Status> {
        Ok(Response::new(GetPluginCapabilitiesResponse {
            capabilities: vec![PluginCapability {
                r#type: Some(plugin_capability::Type::Service(
                    plugin_capability::Service {
                        r#type: plugin_capability::service::Type::ControllerService.into(),
                    },
                )),
            }],
        }))
    }

    async fn probe(&self, _: Request<ProbeRequest>) -> Result<Response<ProbeResponse>, Status> {
        Ok(Response::new(ProbeResponse::default()))
    }
}
