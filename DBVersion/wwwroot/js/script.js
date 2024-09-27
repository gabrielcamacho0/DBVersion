function copiarAlPortapapeles (texto) {
    navigator.clipboard.writeText(texto).then(function () {
        alertaExitosaPopup("Se ha copiado el texto al portapapeles.");
    })
        .catch(function (error) {
            alert(error);
        });
}

async function confirmarPopup(mensaje, botonConfirmar, botonDenegar) {

    let valorRetorno;

    await Swal.fire({
        title: mensaje,
        showDenyButton: true,
        showCancelButton: false,
        confirmButtonText: botonConfirmar,
        denyButtonText: botonDenegar,
        icon: 'question',
        allowOutsideClick: false,
        allowEscapeKey: false
    }).then((result) => {
        if (result.isConfirmed) {
            valorRetorno = true;
        } else if (result.isDenied) {
            valorRetorno = false;
        }
    });

    return valorRetorno
};

function alertaPopup(mensaje) {

    Swal.fire({
        title: mensaje,
        showDenyButton: false,
        showCancelButton: false,
        confirmButtonText: 'Aceptar',
        denyButtonText: '',
        icon: 'warning',
        allowOutsideClick: false,
        allowEscapeKey: false
    })
};


function alertaExitosaPopup(mensaje) {

    Swal.fire({
        title: mensaje,
        showDenyButton: false,
        showCancelButton: false,
        confirmButtonText: 'Aceptar',
        denyButtonText: '',
        icon: 'success',
        allowOutsideClick: false,
        allowEscapeKey: false
    })
};

function alertaErrorPopup(mensaje) {

    Swal.fire({
        title: mensaje,
        showDenyButton: false,
        showCancelButton: false,
        confirmButtonText: 'Aceptar',
        denyButtonText: '',
        icon: 'error',
        allowOutsideClick: false,
        allowEscapeKey: false
    })
};

function noAprobar(idCheck) {
    let check = document.getElementById('aprobarCheck-'+idCheck);
    check.checked = false;
};
