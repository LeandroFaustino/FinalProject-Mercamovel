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
 
 
