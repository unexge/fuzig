use clap::Parser;
use tokio::net::UnixListener;
use tokio::signal;
use tokio_stream::wrappers::UnixListenerStream;
use tonic::transport::Server;

use csi::identity_server::IdentityServer;
use csi::node_server::NodeServer;

mod csi;
mod identity;
mod node;

#[derive(Parser, Debug)]
#[command(version)]
struct Args {
    #[arg(long)]
    endpoint: String,

    #[arg(long)]
    fuzig_bin: String,

    #[arg(long, default_value = "umount")]
    umount_bin: String,
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let args = Args::parse();

    let socket = UnixListener::bind(args.endpoint)?;
    let stream = UnixListenerStream::new(socket);

    Server::builder()
        .add_service(IdentityServer::new(identity::Identity {}))
        .add_service(NodeServer::new(node::Node {
            fuzig_bin: args.fuzig_bin,
            umount_bin: args.umount_bin,
        }))
        .serve_with_incoming_shutdown(stream, shutdown_signal())
        .await?;

    Ok(())
}

async fn shutdown_signal() {
    signal::ctrl_c().await.unwrap();
}
