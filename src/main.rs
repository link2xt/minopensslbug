fn main() {
    if let Err(err) = openssl::ssl::SslConnector::builder(openssl::ssl::SslMethod::tls()) {
        let err = &err.errors()[0];
        eprintln!("{:?}", err);
        eprintln!("{:?}", err.reason());
    } else {
        println!("Ok!");
    }
}
