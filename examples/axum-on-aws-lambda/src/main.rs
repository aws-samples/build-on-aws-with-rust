use lambda_http::{Error, run};
use axum::{extract::Path, response::Json, routing::{get, post}, Router};
use serde_json::{Value, json};

async fn index() -> Json<Value> {
    Json(json!({ "msg": "Hello, Sydney!" }))
}

async fn greet(Path(name): Path<String>) -> Json<Value> {
    Json(json!({ "msg": format!("Hello, {name}!") }))
}


#[tokio::main]
async fn main() -> Result<(), Error> {
    let app = Router::new()
        .route("/", get(index))
        .route("/:name", post(greet));

    run(app).await
}
