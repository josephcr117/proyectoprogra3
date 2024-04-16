using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TripAdvisor.Models
{
    public class Tarjetas
    {
        [DisplayName("Número de Tarjeta")]
        [Required(ErrorMessage = "El número de tarjeta es requerido")]
        public string NumeroTarjeta { get; set; }

        [DisplayName("Nombre en la Tarjeta")]
        [Required(ErrorMessage = "El nombre en la tarjeta es requerido")]
        public string NombreTarjeta { get; set; }

        [DisplayName("Fecha de Expiración")]
        [Required(ErrorMessage = "La fecha de expiración es requerida")]
        public string FechaExp { get; set; }

        [DisplayName("CVV")]
        [Required(ErrorMessage = "El CVV es requerido")]
        public int CVV { get; set; }
    }
}