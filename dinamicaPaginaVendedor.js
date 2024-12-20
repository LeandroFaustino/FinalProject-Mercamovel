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
});

document.addEventListener("DOMContentLoaded", function() {
    const DivFormProdutos = document.getElementById('DivFormProdutos');

    DivFormProdutos.addEventListener('submit', function(event) {
        event.preventDefault();
        const value = event.submitter.id;

        const xhr = new XMLHttpRequest();
        xhr.open('GET', `GETprodutos.php?nomeProduto=${value}`, true);

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                InputPeso(response);
            }
        };

        xhr.send();
    });

    function InputPeso(dados) {
        const introducaoPeso = document.getElementById('introducaoPeso');
        introducaoPeso.innerHTML = '';
        
        if (dados.length > 0) {
            dados.forEach(item => {

                // Requisição para buscar a média do produto, e criação dos elementos DOM após receber o dado necessário.
                fetchMediaPreco(item.NomeProduto, (media) => {
                    const h1 = document.createElement('h1');
                    const input = document.createElement('input');
                    const label = document.createElement('label');
                    const h2 = document.createElement('h2');
                    const hr = document.createElement('hr');
                    const button = document.createElement('button');
                    const p = document.createElement('p');

                    h1.textContent = item.nomeTipo;
                    h2.textContent = item.NomeProduto;
                    input.type = "number";
                    input.id = "peso";
                    input.placeholder = "preço";
                    input.step = "0.01";
                    label.textContent = "€ ";
                    p.innerText = `O preço médio atual para este produto é de ${media}€/Kg`;
                    button.textContent = "Adicionar";


                    button.addEventListener('click', function(event){
                        event.preventDefault();
                        const user_id = introducaoPeso.dataset.userId;
                        
                        const xhr = new XMLHttpRequest();
                            xhr.open('POST', `processarAdicionarItem.php?produto=${item.NomeProduto}&userid=${user_id}&preco=${input.value}`, true);

                            xhr.onreadystatechange = function() {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                   
                                        location.reload();
                                    
                                }
                            };

                            xhr.send();
                        
                    })

                    introducaoPeso.appendChild(h1);
                    introducaoPeso.appendChild(hr);
                    introducaoPeso.appendChild(h2);
                    introducaoPeso.appendChild(label);
                    introducaoPeso.appendChild(input);
                    introducaoPeso.appendChild(p);
                    introducaoPeso.appendChild(button);

                });
            });
        } else {
            introducaoPeso.textContent = 'Nenhum produto encontrado.';
        }
        
    }

    function fetchMediaPreco(nomeProduto, callback) {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', `processarMediaPreco.php?nomeProduto=${nomeProduto}`, true);

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                const media = response.length > 0 ? response[0].Media : "N/A";
                callback(media);
            } else if (xhr.readyState === 4) {
                console.error("Erro ao buscar a média de preço");
                callback("Erro");
            }
        };

        xhr.send();
    }
});




document.addEventListener("DOMContentLoaded", function(){
    const introducaoPeso = document.getElementById('DivFormProdutos')

    introducaoPeso.addEventListener('submit', function(event){
        MostrarInputPeso();  
    })

    function MostrarInputPeso() {
            
            var target = document.getElementById('editar-preco')
            var target2 = document.getElementById('divListaProdutos')
            target2.classList.remove('divListaProdutos2')
            target2.classList.add('divListaProdutos')
            target.classList.remove('editar-preco');
            target.classList.add('editar-preco2');
        
    }
})

function Remover(produto, userId) {
    
    const produtoID = produto;
    const vendedorID = userId;
    const tabela = document.querySelector('tbody');
    const linha = document.getElementById(produtoID);

    const xhr = new XMLHttpRequest();
        xhr.open('DELETE', `processarEliminarItem.php?produto=${produtoID}&vendedor=${vendedorID}`, true);
        
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                displayResults(response);
            }
        };
        
        xhr.send();


    tabela.removeChild(linha);    

}

function FecharEdicao() {
    
    var target = document.getElementById('editar-preco');
    target.classList.remove('editar-preco2');
    target.classList.add('editar-preco');
    
}

function abrirEdicaoItem(produto, userId){
    const target = document.getElementById('editar-preco')
    const editDiv = document.getElementById('introducaoPeso')
    target.classList.add('editar-preco2');
    target.classList.remove('editar-preco');
    
    editDiv.innerHTML = '';

    console.log(editDiv);

    const h1 = document.createElement('h1');
    const input = document.createElement('input');
    const label = document.createElement('label');
    const h2 = document.createElement('h2');
    const hr = document.createElement('hr');
    const button = document.createElement('button');
    
 
                    h1.textContent = "Editar"
                    h2.textContent = produto;
                    input.type="number";
                    input.id="preco";
                    input.placeholder="0.00";
                    input.step="0.01";
                    label.textContent=" €";      
                    button.textContent = "Editar";
                    
                    input.addEventListener('input', function() {
                        editDiv.value = input.value;
                        
                    });

                    button.addEventListener("click", function(){
        
                        if(!editDiv.value){
                            alert("Porfavor insira um valor!")
                            
                        }else{
                            const preco = editDiv.value;
                       
                            const xhr = new XMLHttpRequest();
                            xhr.open('UPDATE', `processarEditarPreco.php?produto=${produto}&vendedor=${userId}&preco=${preco}`, true);
                            
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    
                                    location.reload();
                                }
                            };
                            
                            xhr.send();
                        }
                    })
                    
                        editDiv.appendChild(h1);
                        editDiv.appendChild(hr);
                        editDiv.appendChild(h2);
                        editDiv.appendChild(input);
                        editDiv.appendChild(label);    
                        editDiv.appendChild(button);
}
    

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

function FecharCategoria() {
    
    var target = document.getElementById('divLista');
    target.classList.remove('divLista2');
    target.classList.add('divLista');
   
    
}