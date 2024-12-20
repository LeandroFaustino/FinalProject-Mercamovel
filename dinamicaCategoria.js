function deslize() {
  var target1 = document.getElementById('scrollSection')
  var target2 = document.getElementById('scrollSection2')
    
    target1.classList.remove('regresso')
    target2.classList.remove('regresso')
    document.getElementById('scrollSection').classList.add('slide-out-left');
    document.getElementById('scrollSection2').classList.add('slide-out-left');
  
}

  function deslize2() {
   var target1 = document.getElementById('scrollSection')
   var target2 = document.getElementById('scrollSection2')
      target1.classList.remove('slide-out-left')
      target2.classList.remove('slide-out-left')
      target1.classList.add('regresso')
      target2.classList.add('regresso')

  }

  function deslizarParaProdutos() {

    var target1 = document.getElementById('category-section');
    target1.classList.add("slide-out-left");
      
  }

  function FecharProdutos() {

    var target = document.getElementById('divListaProdutos');
    var target2 = document.getElementById('category-section');
    
    target.classList.remove('visible');
    target2.classList.remove('slide-out-left');
    
}

function displayResults(data) {
  const resultadoDiv = document.getElementById('DivFormProdutos'); // O formulário.
  resultadoDiv.innerHTML = ''; // Limpa o conteúdo existente do formulário.
  
  if (data.length > 0) {
      data.forEach(item => {
          const label = document.createElement('label');
          const button = document.createElement('button');
          const br = document.createElement('br');
          
          label.setAttribute('for', "produto");
          label.textContent = item.NomeProduto;

          button.id = item.NomeProduto;
          button.textContent = "+";
          button.type = "button";

          // Evento para definir o valor do input oculto e enviar o formulário.
          button.addEventListener("click", function() {
              const targetInput = document.getElementById('produto'); // Input permanece acessível.
              if (targetInput) {
                  resultadoDiv.appendChild(targetInput)
                  targetInput.value = button.id;
                  resultadoDiv.submit(); // Envia o formulário.
              } else {
                  console.error("O elemento com ID 'produto' não foi encontrado.");
              }
          });

          resultadoDiv.appendChild(button);
          resultadoDiv.appendChild(label);
          resultadoDiv.appendChild(br);
      });
  } else {
      resultadoDiv.textContent = 'Nenhum produto encontrado.';
  }
}


 
 
document.addEventListener("DOMContentLoaded", function(){
  let response;
  const categorias = document.querySelectorAll("img");

  categorias.forEach(element => {

    element.addEventListener("click", function(){
      const categoria = this.id;
      const divLista = document.getElementById('divListaProdutos')
  
      const xhr = new XMLHttpRequest();
        xhr.open('GET', `processarSelecaoCategoria.php?categoriaProduto=${categoria}`, true);
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                response = JSON.parse(xhr.responseText);

                deslizarParaProdutos();
                divLista.classList.add('visible');
                displayResults(response);
                
            }
        };
        
        xhr.send();

      
    });
    
  });
})

