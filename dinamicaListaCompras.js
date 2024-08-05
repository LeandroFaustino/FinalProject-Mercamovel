
/* Variaveis globais */ 


document.addEventListener("DOMContentLoaded", function () {
    const formCategoria = document.getElementById('formCategoria');
    
    formCategoria.addEventListener('submit', function (event) {
        event.preventDefault();
        const formData = new FormData(formCategoria);
        const categoria = formData.get('categoriaProduto');
        
        const xhr = new XMLHttpRequest();
        xhr.open('GET', `processarSelecaoCategoria.php?categoriaProduto=${categoria}`, true);
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                displayResults(response);
            }
        };
        
        xhr.send();
    });
    
    function displayResults(data) {
        const resultadoDiv = document.getElementById('DivFormProdutos');
        resultadoDiv.innerHTML = '';
        
        if (data.length > 0) {
            
            
            data.forEach(item => {
                const label = document.createElement('label');
                const button = document.createElement('button');
                const br = document.createElement('br');
                label.for = "produtos"
                label.textContent = item.NomeProduto;
                button.id=item.NomeProduto;
                button.textContent = "+";
                resultadoDiv.appendChild(button);
                resultadoDiv.appendChild(label);
                resultadoDiv.appendChild(br);
            });
            
        } else {
            resultadoDiv.textContent = 'Nenhum produto encontrado.';
        }
    }


        /*function displayResults(data) {
            const resultadoDiv = document.getElementById('DivFormProdutos');
            resultadoDiv.innerHTML = '';
            
            if (data.length > 0) {
                
                
                data.forEach(item => {
                    const input = document.createElement('input');
                    const label = document.createElement('label');
                    const br = document.createElement('br');
                    input.type = "radio";
                    input.value = item.NomeProduto;
                    input.name = "nomeProduto";
                    label.for = "produtos"
                    label.textContent = item.NomeProduto;
                    resultadoDiv.appendChild(label);
                    resultadoDiv.appendChild(input);
                    resultadoDiv.appendChild(br);
                });
                
            } else {
                resultadoDiv.textContent = 'Nenhum produto encontrado.';
            }
        }*/    
});

document.addEventListener("DOMContentLoaded", function(){
    const DivFormProdutos = document.getElementById('DivFormProdutos')

    DivFormProdutos.addEventListener('submit', function(event){
        
        event.preventDefault();
        const value = event.submitter.id;

        const xhr = new XMLHttpRequest();
        xhr.open('GET', `GETprodutos.php?nomeProduto=${value}`, true);

        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                InputPeso(response);
            }
        };
        
        xhr.send();
    })

    function InputPeso(data) {
        const introducaoPeso = document.getElementById('introducaoPeso');
        const lista = document.getElementById('lista');
        introducaoPeso.innerHTML = '';
        
        if (data.length > 0) {
            
            data.forEach(item => {
                
                const h1 = document.createElement('h1');
                const input = document.createElement('input');
                const label = document.createElement('label');
                const h2 = document.createElement('h2');
                const hr = document.createElement('hr');
                const button = document.createElement('button');
                const p = document.createElement('p')
 
                    h1.textContent = item.nomeTipo;
                    h2.textContent = item.NomeProduto;
                    input.type="number";
                    input.id="peso";
                    input.placeholder="0.000"
                    input.step="0.001"
                    label.textContent="Kg/Gr:"      
                    button.type = "submit"
                    button.name = item.NomeProduto
                    button.textContent = "Adicionar";
                    
                    input.addEventListener('input', function() {
                        button.id = input.value;
        
                    });
                        
                        introducaoPeso.appendChild(h1);
                        introducaoPeso.appendChild(hr);
                        introducaoPeso.appendChild(h2);
                        introducaoPeso.appendChild(label);
                        introducaoPeso.appendChild(input);    
                        introducaoPeso.appendChild(button);
                        
            });
            
        } else {
            resultadoDiv.textContent = 'Nenhum produto encontrado.';
        }

        

    }
})

document.addEventListener("DOMContentLoaded", function(){
    const introducaoPeso = document.getElementById('DivFormProdutos')

    introducaoPeso.addEventListener('submit', function(event){
        MostrarInputPeso();
        
    })

    function MostrarInputPeso() {
            
            var target = document.getElementById('selecaoPeso')
            var target2 = document.getElementById('divListaProdutos')
            target2.classList.remove('divListaProdutos2')
            target2.classList.add('divListaProdutos')
            target.classList.remove('selecaoPeso');
            target.classList.add('selecaoPeso2');
        
    }
})

document.addEventListener("DOMContentLoaded", function(){
    const envio = document.getElementById('introducaoPeso')

    envio.addEventListener('submit', function(event){
        event.preventDefault();
        const itemAdicionar = event.submitter.name;
        const itemPeso = event.submitter.id;
        Adicionar(itemAdicionar, itemPeso);
        /*ArrayCollect(itemAdicionar, itemPeso);*/
    })

    function Adicionar(item, peso) {
            const tr = document.createElement('tr')
            const lista = document.getElementById('lista')
            const nome = document.createElement('td')
            const pesoItem = document.createElement('td')
            const buttonSlot = document.createElement('td')
            const button = document.createElement('button')
            const buttonCalcular = document.createElement('button')
            const verificarButton = document.getElementById('calcular')

            nome.textContent = item;
            pesoItem.textContent = peso;
            tr.id=item;
            button.id=item;
            button.textContent = "-"
            
            if(!verificarButton){
                const divCalcular=document.getElementById('botaoCalcular')
                buttonCalcular.id="calcular"
                buttonCalcular.textContent="CALCULAR"
                divCalcular.appendChild(buttonCalcular)
               
                
            }

            buttonSlot.appendChild(button)
            tr.appendChild(nome);
            tr.appendChild(pesoItem);
            tr.appendChild(buttonSlot);
            lista.appendChild(tr);
            
            

            button.addEventListener('click', function() {
                Remover(item);
                
            });
        
    }

    function Remover(itemId) {
        const parentDiv = document.getElementById("lista");
        const childDiv = document.getElementById(itemId);


        if (childDiv) {
            parentDiv.removeChild(childDiv);
        }
    }

    

})

document.addEventListener("DOMContentLoaded", function(){
    const triggerCalcular = document.getElementById("botaoCalcular")
    
    triggerCalcular.addEventListener('click', function(event){
        
       
        let lista = [[]]
       
        const listaDiv = document.getElementById('lista');
        const itemsLista = listaDiv.getElementsByTagName('td');

        let colectar=[];

        for(let i=0; i<itemsLista.length; i++){
            
            if(itemsLista[i].textContent!="-"){
                colectar.push(itemsLista[i].textContent)
               
            }else{
                lista.push(colectar)
                colectar = [];
            }
            
        }

        const listaJson = JSON.stringify(lista)
        document.getElementById('listaData').value = listaJson;
        document.getElementById('formCalcular').submit()

        
        
    })

    })


    
    /*let insert = [item, peso]
    inventario.push(insert)
    console.log(inventario)*/



function MostrarCategoria() {
    
    var target = document.getElementById('divLista');
    target.classList.remove('divLista');
    target.classList.add('divLista2');
   
    
}

function MostrarProdutos() {
    
 
    var target = document.getElementById('divListaProdutos');
    
    target.classList.remove('divListaProdutos');
    target.classList.add('divListaProdutos2');
    
    
}

function Submit(){
    document.getElementById('formCategoria').submit();
    
}

function FecharCategoria() {
    
    var target = document.getElementById('divLista');
    target.classList.remove('divLista2');
    target.classList.add('divLista');
   
    
}

function FecharProdutos() {
    
    var target = document.getElementById('divListaProdutos');
    target.classList.remove('divListaProdutos2');
    target.classList.add('divListaProdutos');
   
    
}

function FecharInputPeso() {
    

    var target = document.getElementById('selecaoPeso');
    target.classList.remove('selecaoPeso2');
    target.classList.add('selecaoPeso');
   
    
}