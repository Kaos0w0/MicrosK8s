#include "httplib.h"

int main(void) {
    // Crea un objeto servidor
    httplib::Server svr;

    // Definicion del endpoint y su manejador
    svr.Get("/servicioBrayan", [](const httplib::Request& req, httplib::Response& res) {
        res.set_content("Me gusta la astronomía. La teoría de la muerte térmica del universo sugiere que su fin llegaría en alrededor de 'Un trillon de trillones de trillones de trillones de trillones de trillones de trillones de trillones de años'", "text/plain");
    });

    // Inicia el servidor en el puerto 8000
    svr.listen("0.0.0.0", 8001);

    return 0;
}