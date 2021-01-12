//vuejs
new Vue ({
    el: '#app-1',
    data: {
        lists: [
            { id: 01,txt: '1. Price/cost is of a equal importance than RAM.', itemValue: '1'},
            { id: 02,txt: '2. Price/cost is of equal to moderate importance than RAM.', itemValue: '2'},
            { id: 03,txt: '3. Price/cost is of a moderate importance than RAM.',itemValue: '3'},
            { id: 04,txt: '4. Price/cost is of moderate to strong importance than RAM.',itemValue: '4'},
            { id: 05,txt: '5. Price/cost is of a strong importance than RAM.',itemValue: '5'},
            { id: 06,txt: '6. Price/cost is of strong to very strong importance than RAM.',itemValue: '6'},
            { id: 07,txt: '7. Price/cost is of a very strong importance than RAM.',itemValue: '7'},
            { id: 08,txt: '8. Price/cost is of very strong to extreme importance than RAM.',itemValue: '8'},
            { id: 09,txt: '9. Price/cost is of a extreme importance than RAM.',itemValue: '9'}
        ],
        list1: [
            { id: 01,txt: '1. Price/cost is of a equal importance than Storage space.', itemValue: '1'},
            { id: 02,txt: '2. Price/cost is of equal to moderate importance than Storage space.', itemValue: '2'},
            { id: 03,txt: '3. Price/cost is of a moderate importance than Storage space.', itemValue: '3'},
            { id: 04,txt: '4. Price/cost is of moderate to strong importance than Storage space.', itemValue: '4'},
            { id: 05,txt: '5. Price/cost is of a strong importance than Storage space.', itemValue: '5'},
            { id: 06,txt: '6. Price/cost is of strong to very strong importance than Storage space.', itemValue: '6'},
            { id: 07,txt: '7. Price/cost is of a very strong importance than Storage space.', itemValue: '7'},
            { id: 08,txt: '8. Price/cost is of very strong to extreme importance than Storage space..', itemValue: '8'},
            { id: 09,txt: '9. Price/cost is of a extreme importance than Storage space.', itemValue: '9'}
        ],
        list2: [
            { id: 01,txt: '1. Price/cost is of a equal importance than Battery.', itemValue: '1'},
            { id: 02,txt: '2. Price/cost is of equal to moderate importance than Battery.', itemValue: '2'},
            { id:03,txt: '3. Price/cost is of a moderate importance than Battery.', itemValue: '3'},
            { id:04,txt: '4. Price/cost is of moderate to strong importance than Battery.', itemValue: '4'},
            { id:05,txt: '5. Price/cost is of a strong importance than Battery.', itemValue: '5'},
            { id:06,txt: '6. Price/cost is of strong to very strong importance than Battery.', itemValue: '6'},
            { id:07,txt: '7. Price/cost is of a very strong importance than Battery.', itemValue: '7'},
            { id: 08,txt: '8. Price/cost is of very strong to extreme importance than Battery.', itemValue: '8'},
            { id:09,txt: '9. Price/cost is of a extreme importance than Battery.', itemValue: '9'}
        ],
        list3: [
            { id: 01,txt: '1. Price/cost is of a equal importance than Camera.', itemValue: '1'},
            { id: 02,txt: '2. Price/cost is of equal to moderate importance than Camera.', itemValue: '2'},
            { id:03,txt: '3. Price/cost is of a moderate importance than Camera.', itemValue: '3'},
            { id:04,txt: '4. Price/cost is of moderate to strong importance than Camera.', itemValue: '4'},
            { id:05,txt: '5. Price/cost is of a strong importance than Camera.', itemValue: '5'},
            { id:06,txt: '6. Price/cost is of strong to very strong importance than Camera.', itemValue: '6'},
            { id:07,txt: '7. Price/cost is of a very strong importance than Camera.', itemValue: '7'},
            { id: 08,txt: '8. Price/cost is of very strong to extreme importance than Camera.', itemValue: '8'},
            { id:09,txt: '9. Price/cost is of a extreme importance than Camera.', itemValue: '9'} 
        ],
        list4: [
            { id: 01,txt: '1. RAM is of a equal importance than Storage space.', itemValue: '1'},
            { id: 02,txt: '2. RAM is of equal to moderate importance than Storage space.', itemValue: '2'},
            { id:03,txt: '3. RAM is of a moderate importance than Storage space.', itemValue: '3'},
            { id:04,txt: '4. RAM is of moderate to strong importance than Storage space.', itemValue: '4'},
            { id:05,txt: '5. RAM is of a strong importance than Storage space.', itemValue: '5'},
            { id:06,txt: '6. RAM is of strong to very strong importance than Storage space.', itemValue: '6'},
            { id:07,txt: '7. RAM is of a very strong importance than Storage space.', itemValue: '7'},
            { id: 08,txt: '8. RAM is of very strong to extreme importance than Storage space.', itemValue: '8'},
            { id:09,txt: '9. RAM is of a extreme importance than Storage space.', itemValue: '9'}
        ],
        list5: [
            { id: 01,txt:'1. RAM is of a equal importance than Battery.', itemValue: '1'},
            { id: 02,txt:'2. RAM is of equal to moderate importance than Battery.', itemValue: '2'},
            { id:03,txt:'3. RAM is of a moderate importance than Battery.', itemValue: '3'},
            { id:04,txt:'4. RAM is of moderate to strong importance than Battery.', itemValue: '4'},
            { id:05,txt:'5. RAM is of a strong importance than Battery.', itemValue: '5'},
            { id:06,txt:'6. RAM is of strong to very strong importance than Battery.', itemValue: '6'},
            { id:07,txt:'7. RAM is of a very strong importance than Battery.', itemValue: '7'},
            { id: 08,txt:'8. RAM is of very strong to extreme importance than Battery.', itemValue: '8'},
            { id:09,txt:'9. RAM is of a extreme importance than Battery.', itemValue: '9'}
        ],
        list6: [
            {id: 01,txt:'1. RAM is of a equal importance than Camera.', itemValue: '1'},
            {id: 02,txt:'2. RAM is of equal to moderate importance than Camera.', itemValue: '2'},
            {id:03,txt:'3. RAM is of a moderate importance than Camera.', itemValue: '3'},
            {id:04,txt:'4. RAM is of moderate to strong importance than Camera.', itemValue: '4'},
            {id:05,txt:'5. RAM is of a strong importance than Camera.', itemValue: '5'},
            {id:06,txt:'6. RAM is of strong to very strong importance than Camera.', itemValue: '6'},
            {id:07,txt:'7. RAM is of a very strong importance than Camera.', itemValue: '7'},
            {id: 08,txt: '8. RAM is of very strong to extreme importance than Camera.', itemValue: '8'},
           { id:09,txt: '9. RAM is of a extreme importance than Camera.', itemValue: '9'}
        ],
        list7: [
            {id: 01,txt:'1. Storage space is of a equal importance than Battery.', itemValue: '1'},
            {id: 02,txt:'2. Storage space is of equal to moderate importance than Battery.', itemValue: '2'},
            {id: 03,txt:'3. Storage space is of a moderate importance than Battery.', itemValue: '3'},
            {id: 04,txt:'4. Storage space is of moderate to strong importance than Battery.', itemValue: '4'},
            {id: 05,txt:'5. Storage space is of a strong importance than Battery.', itemValue: '5'},
            {id: 06,txt:'6. Storage space is of strong to very strong importance than Battery.', itemValue: '6'},
            {id: 07,txt:'7. Storage space is of a very strong importance than Battery.', itemValue: '7'},
            {id: 08,txt:'8. Storage space is of very strong to extreme importance than Battery.', itemValue: '8'},
            {id: 09,txt:'9. Storage space is of a extreme importance than Battery.', itemValue: '9'}
        ],
        list8: [
            {id: 01,txt:'1. Storage space is of a equal importance than Camera.', itemValue: '1'},
            {id: 02,txt:'2. Storage space is of equal to moderate importance than Camera.', itemValue: '2'},
            {id: 03,txt:' 3. Storage space is of a moderate importance than Camera.', itemValue: '3'},
            {id: 04,txt:'4. Storage space is of moderate to strong importance than Camera.', itemValue: '4'},
            {id: 05,txt:'5. Storage space is of a strong importance than Camera.', itemValue: '5'},
            {id: 06,txt:'6. Storage space is of strong to very strong importance than Camera.', itemValue: '6'},
            {id: 07,txt:'7. Storage space is of a very strong importance than Camera.', itemValue: '7'},
            {id: 08,txt:'8. Storage space is of very strong to extreme importance than Camera.', itemValue: '8'},
            {id: 09,txt:'9. Storage space is of a extreme importance than Camera.', itemValue: '9'},
        ],
        list9: [
            {id: 01,txt:'1. Battery is of a equal importance than Camera.', itemValue: '1'},
            {id: 02,txt:'2. Battery is of equal to moderate importance than Camera.', itemValue: '2'},
            {id: 03,txt:'3. Battery is of a moderate importance than Camera.', itemValue: '3'},
            {id: 04,txt:'4. Battery is of moderate to strong importance than Camera.', itemValue: '4'},
            {id: 05,txt:' 5. Battery is of a strong importance than Camera.', itemValue: '5'},
            {id: 06,txt:'6. Battery is of strong to very strong importance than Camera.', itemValue: '6'},
            {id: 07,txt:'7. Battery is of a very strong importance than Camera.', itemValue: '7'},
            {id: 08,txt:'8. Battery is of very strong to extreme importance than Camera.', itemValue: '8'},
            {id: 09,txt:'9. Battery is of a extreme importance than Camera.', itemValue: '9'}
        ]
    }
})

new Vue ({
    el: '#app-2',
    data: {
        images: [
            {url: 'img/iphone11pro.jpg'},
            {url: 'img/redmagic.jpg'}
        ]
    }
})


/*purejs*/
var coll = document.getElementsByClassName("collapsible");
var i;

for ( i=0 ; i < coll.length; i++) {
    coll[i].addEventListener('click',function(){
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if( content.style.display === "block"){
        content.style.display = "none";
    }else{
        content.style.display = "block";
    }
    });
}