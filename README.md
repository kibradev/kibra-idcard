# kibra-idcard
MetaItem Kimlik

Veritabanına "kimlik" diye bir item eklemeniz yeterli olacaktır.

Ve Şunları Yapın;


# qb_inventory/html/css/app.js

- Bu Kısım:

```javascript 
 } else if (itemData.name == "kimlik") {
            $(".item-info-title").html('<p>'+itemData.label+'</p>')
            $(".item-info-description").html('<p><strong>Ad Soyad: </strong><span>' + itemData.info.adsoyad + '</span></p><p><strong>Cinsiyet: </strong><span>' + itemData.info.cinsiyet + '</span></p><p><strong>Doğum Tarihi: </strong><span>' + itemData.info.dogumtarih + '</span></p>');
```


