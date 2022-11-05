use tokio::net::TcpListener;

use std::io;

#[cfg(not(target_os = "wasi"))]
async fn get_tcplistener() -> TcpListener {
    println!("Listening on: 127.0.0.1:4000");
    TcpListener::bind("127.0.0.1:4000").await.unwrap()
}

#[cfg(target_os = "wasi")]
async fn get_tcplistener() -> TcpListener {
    use std::os::wasi::io::FromRawFd;
    let stdlistener = unsafe { std::net::TcpListener::from_raw_fd(4) };
    stdlistener.set_nonblocking(true).unwrap();
    TcpListener::from_std(stdlistener).unwrap()
}

#[tokio::main(flavor = "current_thread")]
async fn main() -> io::Result<()> {

  let listener = get_tcplistener().await;

    match listener.accept().await {
      Ok((_socket, addr)) => println!("new client: {:?}", addr),
      Err(e) => println!("couldn't get client: {:?}", e),
  }

  Ok(())

}

