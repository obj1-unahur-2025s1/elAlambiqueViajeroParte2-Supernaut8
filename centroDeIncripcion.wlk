import elAlambiqueViajero.*
object centroDeInscripcion {
    const vehiculos = [alambiqueVeloz, antigualla, chatarra, convertible, moto]
    const property vehiculosParticipantes = []
    const vehiculosRechazados = []
    var locacionDeLaCarrera = buenosAires

    method locacionDeLaCarrera() = locacionDeLaCarrera
    method locacionDeLaCarrera(unaCuidad) {
        locacionDeLaCarrera = unaCuidad
    }
    method recibirVehiculo(unVehiculo) {
        if (locacionDeLaCarrera.puedeLlegar(unVehiculo))
            vehiculosParticipantes.add(unVehiculo)
        else
            vehiculosRechazados.add(unVehiculo)
    }
    method replanificacionDeCarrera(unaCuidad) {
        self.locacionDeLaCarrera(unaCuidad)
        vehiculosParticipantes.clear()
        vehiculosRechazados.clear()
        vehiculos.forEach({v => v.participarEnLaCarrera()})
    }
}