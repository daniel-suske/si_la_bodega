const formularios = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');
const textareas = document.querySelectorAll('#formulario textarea');

const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
    nombre: /^[a-zA-Z0-9\s\_\-]{7,50}$/, // Letras, numeros, espacios, guiones.
    no_serie: /^[a-zA-Z0-9\_\-]{10,50}$/, // Letras, numeros, guion y guion_bajo
    marca: /^[a-zA-Z\s\_\-]{2,30}$/, //letras 
    modelo: /^[a-zA-Z0-9\_\-]{3,50}$/, // Letras, numeros, guion y guion_bajo

    descripcion: /^[\s\S]{10,500}$/, // Letras, numeros, guion y guion_bajo
    costos: /^\d{2,18}$/, // 2 a 18 numeros.
    cantidad: /^\d{1,8}$/ // 1 a 8 numero.
    


};
const campos = {

    id_servicio: false,
    id_producto: false,
    dates: false,
    descripcion: false,
    costos: false,
    tecnico: false
   
    
};

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "descripcion":
            validarCampo(expresiones.descripcion, e.target, 'descripcion');
            break;
        case "costos":
            validarCampo(expresiones.costos , e.target, 'costos');
            break;
        
    }



};

function validselect(nombre_id){
   

    
    consultaw=document.getElementById(`${nombre_id}`).value;
    
   
    
    

    
    if (consultaw == "") {
         
        document.querySelector(`#grupo__${nombre_id} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${nombre_id} i`).classList.remove('fa-check-circle');
        document.getElementById(`grupo__${nombre_id}`).classList.remove("formulario__grupo-correcto");
        document.getElementById(`grupo__${nombre_id}`).classList.add("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${nombre_id} .formulario__input-error`).classList.add("formulario__input-error-activo");
        campos[`${nombre_id}`] = false;


    } else {
        document.querySelector(`#grupo__${nombre_id} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${nombre_id} i`).classList.add('fa-check-circle');
        document.getElementById(`grupo__${nombre_id}`).classList.add("formulario__grupo-correcto");
        document.getElementById(`grupo__${nombre_id}`).classList.remove("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${nombre_id} .formulario__input-error`).classList.remove("formulario__input-error-activo");
        
        campos[`${nombre_id}`] = true;
    }
    
    }




const validarCampo = (expresion, input, campo) => {

    if (expresion.test(input.value)) {

        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
        campos[campo] = true;
    } else {
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
        campos[campo] = false;

    }

}



inputs.forEach((input) => {
    input.addEventListener("keyup", validarFormulario);
    input.addEventListener("blur", validarFormulario);
    
    

});
textareas.forEach((textarea) => {
    textarea.addEventListener("keyup", validarFormulario);
    textarea.addEventListener("blur", validarFormulario);
    
    

});

function agre(){
                         var dates = document.getElementById('dates').value;
                         document.getElementById('fecha').value=dates;
                         
                          
                          console.log(document.getElementById('fecha').value);
                        }

formulario.addEventListener("submit", (e) => {
    e.preventDefault();
   
    if (campos.id_servicio && campos.id_producto && campos.dates && campos.descripcion && campos.costos && campos.tecnico) {


        /*formulario.reset(); */

        var formularion = document.getElementById("formulario");
       /*formularion.submit();*/
        var opcion = document.getElementById("opcion").value;
        var id_servicio = document.getElementById("id_servicio").value;
        var id_producto = document.getElementById("id_producto").value;
         var fecha = document.getElementById("fecha").value;
          var descripcion = document.getElementById("descripcion").value;
           var costos = document.getElementById("costos").value;
            var tecnico = document.getElementById("tecnico").value;
           
        /*
          var repuesto1=document.getElementById("repuesto1").value;
            var repuesto2=document.getElementById("repuesto2").value;
            var repuesto3=document.getElementById("repuesto3").value;
            var repuesto4=document.getElementById("repuesto4").value;
            var repuesto5=document.getElementById("repuesto5").value;
         */
          
                        
                    


            /*
            var parametros = {
        opcion:opcion,
        id_servicio: id_servicio,
        id_producto: id_producto,
        fecha: fecha,
        descripcion: descripcion,
        costos: costos,
        tecnico: tecnico
        
        
      
      }*/
  var ass=""
  var repuestosid =[];
  var repuestoscantidad=[];
  arrCategories.map(function (arrCategories){
     repuestosid.push(arrCategories.id);
     repuestoscantidad.push(arrCategories.cantidad);
     
  });
  var datoss=""
        $.post("Reparacion", { 
        repuestosid: repuestosid,
        repuestoscantidad: repuestoscantidad,
        opcion:opcion,
        id_servicio: id_servicio,
        id_producto: id_producto,
        fecha: fecha,
        descripcion: descripcion,
        costos: total_subtotal,
        tecnico: tecnico}, function(res){
     
        datoss = JSON.parse(res);

          ass=datoss.res;
         
         if(ass === "si"){
                formulario.reset();
                location.href ="consultaReparacion.jsp";
            }
            if(ass==='no'){
                
                document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        }, 40000);
                
            }
         
        })
            
            
          /*  var ruta= "id_servicio=" + id_servicio + "id_producto=" + id_producto + "fecha=" + fecha + "descripcion=" + descripcion + "costos" + costos + + "opcion=" + opcion + "tecnico=" + tecnico + "array=" + arrCategories;
            $.post('Reparacion',{ ruta });*/

        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');

        }, 7000);



        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            icono.classList.remove('formulario__grupo-correcto');

            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        });
    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        }, 20000);
    }
});

var arrCategories = []

var datos = {}

var valoru=""

var total_subtotal=0;
var costos=0;





$("#addElement").click(function (e) {
    //deshabilitar submit del form
    e.preventDefault()
    
   

    
    var idCategory = $("#repuesto").val()
    
 

    
    let nameCategory = $("#repuesto option:selected").text()
    let cantidad = $("#cantidad").val();
   
    
    if (idCategory != '' && cantidad !='' ) {
        
        if (typeof existCategory(idCategory) === 'undefined') {
            
             
            var parametros = {
        
        Id: $("#repuesto").val(),
        opcion:69
      }
  
        $.post("Repuesto", parametros, function (rs) {
        
        datos = JSON.parse(rs);
/*
         valoru=datos.valor;*/
            valoru=datos.array.Valor_Venta;
          
            
            //siguiente
             
             var subtotal=valoru*cantidad;
            //Llenar el array
            arrCategories.push({
                'id': idCategory,
                'name': nameCategory,
                'cantidad': cantidad,
                'valorU': valoru,
                'subtotal': subtotal
                
             
            });
            total_subtotal+=subtotal;
            
            
            
             showCategories();
             showTotalPre(total_subtotal);
             
        });
               
         
        
            
            
           
          
        
        } else {
            alert("El repuesto ya se ha Seleccionado")
        }
        //mostrar información en el html
       
        
     
    } else {
       alert("Debe Seleccionar una Repuesto y la Cantidad")
    }



});

function existCategory(idCategory) {
    let existCategory = arrCategories.find(function (category) {
        return category.id == idCategory
    })
    return existCategory
    
}
function adicionar(){
    if( costos){
        var efe=parseInt(costos);
        total_subtotal-=efe;
}
        costos= $("#costos").val();
        if(costos){
         var changess=parseInt(costos);
         total_subtotal+=changess;
         showTotalPre(total_subtotal)
        }
    return total_subtotal;
    
}
function formatCurrency (locales, currency, fractionDigits, number) {
  var formatted = new Intl.NumberFormat(locales, {
    style: 'currency',
    currency: currency,
    minimumFractionDigits: fractionDigits
  }).format(number);
  return formatted;
}
function showTotalPre(total_subtotal){
  
    $("#perra").empty();
    var ola=formatCurrency("es-CO", "COP", 2, total_subtotal);
    $("#perra").append('<span>'+ola+'</span>'); 
}


function showCategories() {
    $("#list-categories").empty()
    
            
    arrCategories.forEach(function (category) {
        $("#list-categories").append('<tr><th><span><button onclick="removeElement(' + category.id +','+category.subtotal+' )" type="button" class="btn btn-dark mb-2" style="border-radius:100px;">&times;</button></span></th> <th><span class="">' + category.name + '</span></th>  <th><span class="">' +formatCurrency("es-CO", "COP", 2, category.valorU) + '</span></th> <th><span class="">' + category.cantidad + '</span> </th> <th><span class="">' + formatCurrency("es-CO", "COP", 2, category.subtotal) + '</span></th></tr>')
      

 valoru="";

    });
  
    
    
    }
    
function removeElement(idCategory, subtotal) {
    let index = arrCategories.indexOf(existCategory(idCategory));
    total_subtotal-=subtotal
    arrCategories.splice(index, 1);
     showTotalPre(total_subtotal)
    showCategories();
}



